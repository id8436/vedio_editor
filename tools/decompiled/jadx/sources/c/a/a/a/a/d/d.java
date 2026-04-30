package c.a.a.a.a.d;

import android.content.Context;
import c.a.a.a.a.b.s;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: EventsFilesManager.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d<T> {
    public static final int MAX_BYTE_SIZE_PER_FILE = 8000;
    public static final int MAX_FILES_IN_BATCH = 1;
    public static final int MAX_FILES_TO_KEEP = 100;
    public static final String ROLL_OVER_FILE_NAME_SEPARATOR = "_";
    protected final Context context;
    protected final s currentTimeProvider;
    private final int defaultMaxFilesToKeep;
    protected final h eventStorage;
    protected volatile long lastRollOverTime;
    protected final List<i> rollOverListeners = new CopyOnWriteArrayList();
    protected final c<T> transform;

    protected abstract String generateUniqueRollOverFileName();

    public d(Context context, c<T> cVar, s sVar, h hVar, int i) throws IOException {
        this.context = context.getApplicationContext();
        this.transform = cVar;
        this.eventStorage = hVar;
        this.currentTimeProvider = sVar;
        this.lastRollOverTime = this.currentTimeProvider.a();
        this.defaultMaxFilesToKeep = i;
    }

    public void writeEvent(T t) throws IOException {
        byte[] bytes = this.transform.toBytes(t);
        rollFileOverIfNeeded(bytes.length);
        this.eventStorage.a(bytes);
    }

    public void registerRollOverListener(i iVar) {
        if (iVar != null) {
            this.rollOverListeners.add(iVar);
        }
    }

    public boolean rollFileOver() throws IOException {
        boolean z = true;
        String strGenerateUniqueRollOverFileName = null;
        if (this.eventStorage.b()) {
            z = false;
        } else {
            strGenerateUniqueRollOverFileName = generateUniqueRollOverFileName();
            this.eventStorage.a(strGenerateUniqueRollOverFileName);
            c.a.a.a.a.b.m.a(this.context, 4, "Fabric", String.format(Locale.US, "generated new file %s", strGenerateUniqueRollOverFileName));
            this.lastRollOverTime = this.currentTimeProvider.a();
        }
        triggerRollOverOnListeners(strGenerateUniqueRollOverFileName);
        return z;
    }

    private void rollFileOverIfNeeded(int i) throws IOException {
        if (!this.eventStorage.a(i, getMaxByteSizePerFile())) {
            c.a.a.a.a.b.m.a(this.context, 4, "Fabric", String.format(Locale.US, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over", Integer.valueOf(this.eventStorage.a()), Integer.valueOf(i), Integer.valueOf(getMaxByteSizePerFile())));
            rollFileOver();
        }
    }

    protected int getMaxFilesToKeep() {
        return this.defaultMaxFilesToKeep;
    }

    protected int getMaxByteSizePerFile() {
        return 8000;
    }

    public long getLastRollOverTime() {
        return this.lastRollOverTime;
    }

    private void triggerRollOverOnListeners(String str) {
        Iterator<i> it = this.rollOverListeners.iterator();
        while (it.hasNext()) {
            try {
                it.next().onRollOver(str);
            } catch (Exception e2) {
                c.a.a.a.a.b.m.a(this.context, "One of the roll over listeners threw an exception", e2);
            }
        }
    }

    public List<File> getBatchOfFilesToSend() {
        return this.eventStorage.a(1);
    }

    public void deleteSentFiles(List<File> list) {
        this.eventStorage.a(list);
    }

    public void deleteAllEventsFiles() {
        this.eventStorage.a(this.eventStorage.c());
        this.eventStorage.d();
    }

    public void deleteOldestInRollOverIfOverMax() {
        List<File> listC = this.eventStorage.c();
        int maxFilesToKeep = getMaxFilesToKeep();
        if (listC.size() > maxFilesToKeep) {
            int size = listC.size() - maxFilesToKeep;
            c.a.a.a.a.b.m.a(this.context, String.format(Locale.US, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files", Integer.valueOf(listC.size()), Integer.valueOf(maxFilesToKeep), Integer.valueOf(size)));
            TreeSet treeSet = new TreeSet(new e(this));
            for (File file : listC) {
                treeSet.add(new f(file, parseCreationTimestampFromFileName(file.getName())));
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = treeSet.iterator();
            while (it.hasNext()) {
                arrayList.add(((f) it.next()).f239a);
                if (arrayList.size() == size) {
                    break;
                }
            }
            this.eventStorage.a(arrayList);
        }
    }

    public long parseCreationTimestampFromFileName(String str) {
        String[] strArrSplit = str.split(ROLL_OVER_FILE_NAME_SEPARATOR);
        if (strArrSplit.length != 3) {
            return 0L;
        }
        try {
            return Long.valueOf(strArrSplit[2]).longValue();
        } catch (NumberFormatException e2) {
            return 0L;
        }
    }
}
