package org.mortbay.io.nio;

import com.google.android.exoplayer.DefaultLoadControl;
import java.io.IOException;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.ClosedSelectorException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.time.DateUtils;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.io.Connection;
import org.mortbay.io.EndPoint;
import org.mortbay.log.Log;
import org.mortbay.thread.Timeout;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SelectorManager extends AbstractLifeCycle {
    private long _lowResourcesConnections;
    private long _lowResourcesMaxIdleTime;
    private long _maxIdleTime;
    private transient SelectSet[] _selectSet;
    private volatile int _set;
    private static final int __JVMBUG_THRESHHOLD = Integer.getInteger("org.mortbay.io.nio.JVMBUG_THRESHHOLD", 512).intValue();
    private static final int __MONITOR_PERIOD = Integer.getInteger("org.mortbay.io.nio.MONITOR_PERIOD", 1000).intValue();
    private static final int __MAX_SELECTS = Integer.getInteger("org.mortbay.io.nio.MAX_SELECTS", DefaultLoadControl.DEFAULT_LOW_WATERMARK_MS).intValue();
    private static final int __BUSY_PAUSE = Integer.getInteger("org.mortbay.io.nio.BUSY_PAUSE", 50).intValue();
    private static final int __BUSY_KEY = Integer.getInteger("org.mortbay.io.nio.BUSY_KEY", -1).intValue();
    private boolean _delaySelectKeyUpdate = true;
    private int _selectSets = 1;

    interface ChangeTask {
        void run();
    }

    protected abstract SocketChannel acceptChannel(SelectionKey selectionKey) throws IOException;

    public abstract boolean dispatch(Runnable runnable) throws IOException;

    protected abstract void endPointClosed(SelectChannelEndPoint selectChannelEndPoint);

    protected abstract void endPointOpened(SelectChannelEndPoint selectChannelEndPoint);

    protected abstract Connection newConnection(SocketChannel socketChannel, SelectChannelEndPoint selectChannelEndPoint);

    protected abstract SelectChannelEndPoint newEndPoint(SocketChannel socketChannel, SelectSet selectSet, SelectionKey selectionKey) throws IOException;

    public void setMaxIdleTime(long j) {
        this._maxIdleTime = j;
    }

    public void setSelectSets(int i) {
        long j = this._lowResourcesConnections * ((long) this._selectSets);
        this._selectSets = i;
        this._lowResourcesConnections = j / ((long) this._selectSets);
    }

    public long getMaxIdleTime() {
        return this._maxIdleTime;
    }

    public int getSelectSets() {
        return this._selectSets;
    }

    public boolean isDelaySelectKeyUpdate() {
        return this._delaySelectKeyUpdate;
    }

    public void register(SocketChannel socketChannel, Object obj) throws IOException {
        int i = this._set;
        this._set = i + 1;
        int i2 = i % this._selectSets;
        SelectSet[] selectSetArr = this._selectSet;
        if (selectSetArr != null) {
            SelectSet selectSet = selectSetArr[i2];
            selectSet.addChange(socketChannel, obj);
            selectSet.wakeup();
        }
    }

    public void register(ServerSocketChannel serverSocketChannel) throws IOException {
        int i = this._set;
        this._set = i + 1;
        SelectSet selectSet = this._selectSet[i % this._selectSets];
        selectSet.addChange(serverSocketChannel);
        selectSet.wakeup();
    }

    public long getLowResourcesConnections() {
        return this._lowResourcesConnections * ((long) this._selectSets);
    }

    public void setLowResourcesConnections(long j) {
        this._lowResourcesConnections = ((((long) this._selectSets) + j) - 1) / ((long) this._selectSets);
    }

    public long getLowResourcesMaxIdleTime() {
        return this._lowResourcesMaxIdleTime;
    }

    public void setLowResourcesMaxIdleTime(long j) {
        this._lowResourcesMaxIdleTime = j;
    }

    public void doSelect(int i) throws IOException {
        SelectSet[] selectSetArr = this._selectSet;
        if (selectSetArr != null && selectSetArr.length > i && selectSetArr[i] != null) {
            selectSetArr[i].doSelect();
        }
    }

    public void setDelaySelectKeyUpdate(boolean z) {
        this._delaySelectKeyUpdate = z;
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    protected void doStart() throws Exception {
        this._selectSet = new SelectSet[this._selectSets];
        for (int i = 0; i < this._selectSet.length; i++) {
            this._selectSet[i] = new SelectSet(this, i);
        }
        super.doStart();
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    protected void doStop() throws Exception {
        SelectSet[] selectSetArr = this._selectSet;
        this._selectSet = null;
        if (selectSetArr != null) {
            for (SelectSet selectSet : selectSetArr) {
                if (selectSet != null) {
                    selectSet.stop();
                }
            }
        }
        super.doStop();
    }

    protected void connectionFailed(SocketChannel socketChannel, Throwable th, Object obj) {
        Log.warn(th);
    }

    public class SelectSet {
        private SelectionKey _busyKey;
        private int _busyKeyCount;
        private transient int _change;
        private transient List[] _changes;
        private transient Timeout _idleTimeout = new Timeout(this);
        private transient int _jvmBug;
        private int _jvmFix0;
        private int _jvmFix1;
        private int _jvmFix2;
        private long _log;
        private long _monitorNext;
        private long _monitorStart;
        private transient int _nextSet;
        private int _paused;
        private boolean _pausing;
        private transient Timeout _retryTimeout;
        private volatile boolean _selecting;
        private transient Selector _selector;
        private int _selects;
        private transient int _setID;
        private final SelectorManager this$0;

        SelectSet(SelectorManager selectorManager, int i) throws Exception {
            this.this$0 = selectorManager;
            this._setID = i;
            this._idleTimeout.setDuration(selectorManager.getMaxIdleTime());
            this._retryTimeout = new Timeout(this);
            this._retryTimeout.setDuration(0L);
            this._selector = Selector.open();
            this._changes = new ArrayList[]{new ArrayList(), new ArrayList()};
            this._change = 0;
            this._monitorStart = System.currentTimeMillis();
            this._monitorNext = this._monitorStart + ((long) SelectorManager.__MONITOR_PERIOD);
            this._log = this._monitorStart + DateUtils.MILLIS_PER_MINUTE;
        }

        public void addChange(Object obj) {
            synchronized (this._changes) {
                this._changes[this._change].add(obj);
            }
        }

        public void addChange(SelectableChannel selectableChannel, Object obj) {
            if (obj == null) {
                addChange(selectableChannel);
            } else if (obj instanceof EndPoint) {
                addChange(obj);
            } else {
                addChange(new ChangeSelectableChannel(selectableChannel, obj));
            }
        }

        public void cancelIdle(Timeout.Task task) {
            synchronized (this) {
                task.cancel();
            }
        }

        public void doSelect() throws IOException {
            List list;
            Selector selector;
            long timeToNext;
            long timeToNext2;
            int i;
            try {
                synchronized (this._changes) {
                    list = this._changes[this._change];
                    this._change = this._change == 0 ? 1 : 0;
                    this._selecting = true;
                    selector = this._selector;
                }
                int i2 = 0;
                while (true) {
                    try {
                        int i3 = i2;
                        if (i3 >= list.size()) {
                            list.clear();
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            synchronized (this) {
                                this._idleTimeout.setNow(jCurrentTimeMillis);
                                this._retryTimeout.setNow(jCurrentTimeMillis);
                                if (this.this$0._lowResourcesConnections <= 0 || selector.keys().size() <= this.this$0._lowResourcesConnections) {
                                    this._idleTimeout.setDuration(this.this$0._maxIdleTime);
                                } else {
                                    this._idleTimeout.setDuration(this.this$0._lowResourcesMaxIdleTime);
                                }
                                timeToNext = this._idleTimeout.getTimeToNext();
                                timeToNext2 = this._retryTimeout.getTimeToNext();
                            }
                            if (timeToNext < 0 || 1000 <= timeToNext) {
                                timeToNext = 1000;
                            }
                            long j = (timeToNext <= 0 || timeToNext2 < 0 || timeToNext <= timeToNext2) ? timeToNext : timeToNext2;
                            if (j > 2) {
                                if (this._pausing) {
                                    try {
                                        Thread.sleep(SelectorManager.__BUSY_PAUSE);
                                    } catch (InterruptedException e2) {
                                        Log.ignore(e2);
                                    }
                                }
                                int iSelect = selector.select(j);
                                long jCurrentTimeMillis2 = System.currentTimeMillis();
                                this._idleTimeout.setNow(jCurrentTimeMillis2);
                                this._retryTimeout.setNow(jCurrentTimeMillis2);
                                this._selects++;
                                if (jCurrentTimeMillis2 > this._monitorNext) {
                                    this._selects = (int) (((long) (this._selects * SelectorManager.__MONITOR_PERIOD)) / (jCurrentTimeMillis2 - this._monitorStart));
                                    this._pausing = this._selects > SelectorManager.__MAX_SELECTS;
                                    if (this._pausing) {
                                        this._paused++;
                                    }
                                    this._selects = 0;
                                    this._jvmBug = 0;
                                    this._monitorStart = jCurrentTimeMillis2;
                                    this._monitorNext = ((long) SelectorManager.__MONITOR_PERIOD) + jCurrentTimeMillis2;
                                }
                                if (jCurrentTimeMillis2 > this._log) {
                                    if (this._paused > 0) {
                                        Log.info(new StringBuffer().append(this).append(" Busy selector - injecting delay ").append(this._paused).append(" times").toString());
                                    }
                                    if (this._jvmFix2 > 0) {
                                        Log.info(new StringBuffer().append(this).append(" JVM BUG(s) - injecting delay").append(this._jvmFix2).append(" times").toString());
                                    }
                                    if (this._jvmFix1 > 0) {
                                        Log.info(new StringBuffer().append(this).append(" JVM BUG(s) - recreating selector ").append(this._jvmFix1).append(" times, canceled keys ").append(this._jvmFix0).append(" times").toString());
                                    } else if (Log.isDebugEnabled() && this._jvmFix0 > 0) {
                                        Log.info(new StringBuffer().append(this).append(" JVM BUG(s) - canceled keys ").append(this._jvmFix0).append(" times").toString());
                                    }
                                    this._paused = 0;
                                    this._jvmFix2 = 0;
                                    this._jvmFix1 = 0;
                                    this._jvmFix0 = 0;
                                    this._log = DateUtils.MILLIS_PER_MINUTE + jCurrentTimeMillis2;
                                }
                                if (iSelect == 0 && j > 10 && jCurrentTimeMillis2 - jCurrentTimeMillis < j / 2) {
                                    this._jvmBug++;
                                    if (this._jvmBug > SelectorManager.__JVMBUG_THRESHHOLD) {
                                        try {
                                            if (this._jvmBug == SelectorManager.__JVMBUG_THRESHHOLD + 1) {
                                                this._jvmFix2++;
                                            }
                                            Thread.sleep(SelectorManager.__BUSY_PAUSE);
                                        } catch (InterruptedException e3) {
                                            Log.ignore(e3);
                                        }
                                    } else {
                                        if (this._jvmBug == SelectorManager.__JVMBUG_THRESHHOLD) {
                                            synchronized (this) {
                                                this._jvmFix1++;
                                                Selector selectorOpen = Selector.open();
                                                for (SelectionKey selectionKey : this._selector.keys()) {
                                                    if (selectionKey.isValid() && selectionKey.interestOps() != 0) {
                                                        SelectableChannel selectableChannelChannel = selectionKey.channel();
                                                        Object objAttachment = selectionKey.attachment();
                                                        if (objAttachment == null) {
                                                            addChange(selectableChannelChannel);
                                                        } else {
                                                            addChange(selectableChannelChannel, objAttachment);
                                                        }
                                                    }
                                                }
                                                Selector selector2 = this._selector;
                                                this._selector = selectorOpen;
                                                try {
                                                    selector2.close();
                                                } catch (Exception e4) {
                                                    Log.warn(e4);
                                                }
                                            }
                                            return;
                                        }
                                        if (this._jvmBug % 32 == 31) {
                                            int i4 = 0;
                                            for (SelectionKey selectionKey2 : selector.keys()) {
                                                if (selectionKey2.isValid() && selectionKey2.interestOps() == 0) {
                                                    selectionKey2.cancel();
                                                    i = i4 + 1;
                                                } else {
                                                    i = i4;
                                                }
                                                i4 = i;
                                            }
                                            if (i4 > 0) {
                                                this._jvmFix0++;
                                            }
                                            return;
                                        }
                                    }
                                } else if (SelectorManager.__BUSY_KEY > 0 && iSelect == 1 && this._selects > SelectorManager.__MAX_SELECTS) {
                                    SelectionKey next = selector.selectedKeys().iterator().next();
                                    if (next == this._busyKey) {
                                        int i5 = this._busyKeyCount + 1;
                                        this._busyKeyCount = i5;
                                        if (i5 > SelectorManager.__BUSY_KEY && !(next.channel() instanceof ServerSocketChannel)) {
                                            SelectChannelEndPoint selectChannelEndPoint = (SelectChannelEndPoint) next.attachment();
                                            Log.warn(new StringBuffer().append("Busy Key ").append(next.channel()).append(" ").append(selectChannelEndPoint).toString());
                                            next.cancel();
                                            if (selectChannelEndPoint != null) {
                                                this.this$0.dispatch(new Runnable(this, selectChannelEndPoint) { // from class: org.mortbay.io.nio.SelectorManager.SelectSet.1
                                                    private final SelectSet this$1;
                                                    private final SelectChannelEndPoint val$endpoint;

                                                    {
                                                        this.this$1 = this;
                                                        this.val$endpoint = selectChannelEndPoint;
                                                    }

                                                    @Override // java.lang.Runnable
                                                    public void run() {
                                                        try {
                                                            this.val$endpoint.close();
                                                        } catch (IOException e5) {
                                                            Log.ignore(e5);
                                                        }
                                                    }
                                                });
                                            }
                                        }
                                    } else {
                                        this._busyKeyCount = 0;
                                    }
                                    this._busyKey = next;
                                }
                                jCurrentTimeMillis = jCurrentTimeMillis2;
                            } else {
                                selector.selectNow();
                                this._selects++;
                            }
                            if (this._selector == null || !selector.isOpen()) {
                                return;
                            }
                            for (SelectionKey selectionKey3 : selector.selectedKeys()) {
                                try {
                                    if (selectionKey3.isValid()) {
                                        Object objAttachment2 = selectionKey3.attachment();
                                        if (objAttachment2 instanceof SelectChannelEndPoint) {
                                            ((SelectChannelEndPoint) objAttachment2).dispatch();
                                        } else if (selectionKey3.isAcceptable()) {
                                            SocketChannel socketChannelAcceptChannel = this.this$0.acceptChannel(selectionKey3);
                                            if (socketChannelAcceptChannel != null) {
                                                socketChannelAcceptChannel.configureBlocking(false);
                                                int i6 = this._nextSet + 1;
                                                this._nextSet = i6;
                                                this._nextSet = i6 % this.this$0._selectSet.length;
                                                if (this._nextSet == this._setID) {
                                                    SelectionKey selectionKeyRegister = socketChannelAcceptChannel.register(this.this$0._selectSet[this._nextSet].getSelector(), 1);
                                                    SelectChannelEndPoint selectChannelEndPointNewEndPoint = this.this$0.newEndPoint(socketChannelAcceptChannel, this.this$0._selectSet[this._nextSet], selectionKeyRegister);
                                                    selectionKeyRegister.attach(selectChannelEndPointNewEndPoint);
                                                    if (selectChannelEndPointNewEndPoint != null) {
                                                        selectChannelEndPointNewEndPoint.dispatch();
                                                    }
                                                } else {
                                                    this.this$0._selectSet[this._nextSet].addChange(socketChannelAcceptChannel);
                                                    this.this$0._selectSet[this._nextSet].wakeup();
                                                }
                                            }
                                        } else if (selectionKey3.isConnectable()) {
                                            SocketChannel socketChannel = (SocketChannel) selectionKey3.channel();
                                            try {
                                                try {
                                                    if (socketChannel.finishConnect()) {
                                                        selectionKey3.interestOps(1);
                                                        SelectChannelEndPoint selectChannelEndPointNewEndPoint2 = this.this$0.newEndPoint(socketChannel, this, selectionKey3);
                                                        selectionKey3.attach(selectChannelEndPointNewEndPoint2);
                                                        selectChannelEndPointNewEndPoint2.dispatch();
                                                    } else {
                                                        selectionKey3.cancel();
                                                    }
                                                } catch (Exception e5) {
                                                    this.this$0.connectionFailed(socketChannel, e5, objAttachment2);
                                                    selectionKey3.cancel();
                                                }
                                            } catch (Throwable th) {
                                                selectionKey3.cancel();
                                                throw th;
                                            }
                                        } else {
                                            SelectChannelEndPoint selectChannelEndPointNewEndPoint3 = this.this$0.newEndPoint((SocketChannel) selectionKey3.channel(), this, selectionKey3);
                                            selectionKey3.attach(selectChannelEndPointNewEndPoint3);
                                            if (selectionKey3.isReadable()) {
                                                selectChannelEndPointNewEndPoint3.dispatch();
                                            }
                                        }
                                    } else {
                                        selectionKey3.cancel();
                                        SelectChannelEndPoint selectChannelEndPoint2 = (SelectChannelEndPoint) selectionKey3.attachment();
                                        if (selectChannelEndPoint2 != null) {
                                            selectChannelEndPoint2.doUpdateKey();
                                        }
                                    }
                                } catch (CancelledKeyException e6) {
                                    Log.ignore(e6);
                                } catch (Exception e7) {
                                    if (this.this$0.isRunning()) {
                                        Log.warn(e7);
                                    } else {
                                        Log.ignore(e7);
                                    }
                                    if (selectionKey3 != null && !(selectionKey3.channel() instanceof ServerSocketChannel) && selectionKey3.isValid()) {
                                        selectionKey3.interestOps(0);
                                        selectionKey3.cancel();
                                    }
                                }
                            }
                            selector.selectedKeys().clear();
                            this._idleTimeout.tick(jCurrentTimeMillis);
                            this._retryTimeout.tick(jCurrentTimeMillis);
                            return;
                        }
                        try {
                            Object obj = list.get(i3);
                            if (obj instanceof EndPoint) {
                                ((SelectChannelEndPoint) obj).doUpdateKey();
                            } else if (obj instanceof Runnable) {
                                this.this$0.dispatch((Runnable) obj);
                            } else if (obj instanceof ChangeSelectableChannel) {
                                ChangeSelectableChannel changeSelectableChannel = (ChangeSelectableChannel) obj;
                                SelectableChannel selectableChannel = changeSelectableChannel._channel;
                                Object obj2 = changeSelectableChannel._attachment;
                                if ((selectableChannel instanceof SocketChannel) && ((SocketChannel) selectableChannel).isConnected()) {
                                    SelectionKey selectionKeyRegister2 = selectableChannel.register(selector, 1, obj2);
                                    SelectChannelEndPoint selectChannelEndPointNewEndPoint4 = this.this$0.newEndPoint((SocketChannel) selectableChannel, this, selectionKeyRegister2);
                                    selectionKeyRegister2.attach(selectChannelEndPointNewEndPoint4);
                                    selectChannelEndPointNewEndPoint4.dispatch();
                                } else if (selectableChannel.isOpen()) {
                                    selectableChannel.register(selector, 8, obj2);
                                }
                            } else if (obj instanceof SocketChannel) {
                                SocketChannel socketChannel2 = (SocketChannel) obj;
                                if (socketChannel2.isConnected()) {
                                    SelectionKey selectionKeyRegister3 = socketChannel2.register(selector, 1, null);
                                    SelectChannelEndPoint selectChannelEndPointNewEndPoint5 = this.this$0.newEndPoint(socketChannel2, this, selectionKeyRegister3);
                                    selectionKeyRegister3.attach(selectChannelEndPointNewEndPoint5);
                                    selectChannelEndPointNewEndPoint5.dispatch();
                                } else if (socketChannel2.isOpen()) {
                                    socketChannel2.register(selector, 8, null);
                                }
                            } else if (obj instanceof ServerSocketChannel) {
                                ((ServerSocketChannel) obj).register(getSelector(), 16);
                            } else {
                                if (!(obj instanceof ChangeTask)) {
                                    throw new IllegalArgumentException(obj.toString());
                                }
                                ((ChangeTask) obj).run();
                            }
                        } catch (Error e8) {
                            if (this.this$0.isRunning()) {
                                Log.warn(e8);
                            } else {
                                Log.debug(e8);
                            }
                        } catch (Exception e9) {
                            if (this.this$0.isRunning()) {
                                Log.warn(e9);
                            } else {
                                Log.debug(e9);
                            }
                        }
                        i2 = i3 + 1;
                    } catch (Throwable th2) {
                        list.clear();
                        throw th2;
                    }
                }
            } catch (CancelledKeyException e10) {
                Log.ignore(e10);
            } catch (ClosedSelectorException e11) {
                Log.warn(e11);
            } finally {
                this._selecting = false;
            }
        }

        public SelectorManager getManager() {
            return this.this$0;
        }

        public long getNow() {
            return this._idleTimeout.getNow();
        }

        public void scheduleIdle(Timeout.Task task) {
            synchronized (this) {
                if (this._idleTimeout.getDuration() > 0) {
                    task.schedule(this._idleTimeout);
                }
            }
        }

        public void scheduleTimeout(Timeout.Task task, long j) {
            synchronized (this) {
                this._retryTimeout.schedule(task, j);
            }
        }

        public void wakeup() {
            Selector selector = this._selector;
            if (selector != null) {
                selector.wakeup();
            }
        }

        Selector getSelector() {
            return this._selector;
        }

        void stop() throws Exception {
            boolean z = true;
            while (z) {
                wakeup();
                z = this._selecting;
            }
            for (SelectionKey selectionKey : new ArrayList(this._selector.keys())) {
                if (selectionKey != null) {
                    Object objAttachment = selectionKey.attachment();
                    if (objAttachment instanceof EndPoint) {
                        try {
                            ((EndPoint) objAttachment).close();
                        } catch (IOException e2) {
                            Log.ignore(e2);
                        }
                    }
                }
            }
            synchronized (this) {
                boolean z2 = this._selecting;
                while (z2) {
                    wakeup();
                    z2 = this._selecting;
                }
                this._idleTimeout.cancelAll();
                this._retryTimeout.cancelAll();
                try {
                } catch (IOException e3) {
                    Log.ignore(e3);
                }
                if (this._selector != null) {
                    this._selector.close();
                    this._selector = null;
                } else {
                    this._selector = null;
                }
            }
        }
    }

    class ChangeSelectableChannel {
        final Object _attachment;
        final SelectableChannel _channel;

        public ChangeSelectableChannel(SelectableChannel selectableChannel, Object obj) {
            this._channel = selectableChannel;
            this._attachment = obj;
        }
    }
}
