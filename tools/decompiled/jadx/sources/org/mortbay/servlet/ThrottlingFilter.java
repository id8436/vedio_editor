package org.mortbay.servlet;

import com.google.android.exoplayer.ExoPlayer;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.log.Log;
import org.mortbay.util.ajax.Continuation;

/* JADX INFO: loaded from: classes3.dex */
public class ThrottlingFilter implements Filter {
    private int _maximum;
    private long _queueSize;
    private long _queueTimeout;
    private int _current = 0;
    private final Object _lock = new Object();
    private final List _queue = new LinkedList();

    @Override // javax.servlet.Filter
    public void init(FilterConfig filterConfig) throws ServletException {
        this._maximum = getIntegerParameter(filterConfig, "maximum", 10);
        this._queueTimeout = getIntegerParameter(filterConfig, "block", ExoPlayer.Factory.DEFAULT_MIN_REBUFFER_MS);
        this._queueSize = getIntegerParameter(filterConfig, "queue", 500);
        if (this._queueTimeout == -1) {
            this._queueTimeout = 2147483647L;
        }
        Log.debug(new StringBuffer().append("Config{maximum:").append(this._maximum).append(", block:").append(this._queueTimeout).append(", queue:").append(this._queueSize).append("}").toString(), null, null);
    }

    private int getIntegerParameter(FilterConfig filterConfig, String str, int i) throws ServletException {
        String initParameter = filterConfig.getInitParameter(str);
        if (initParameter == null) {
            return i;
        }
        try {
            return Integer.parseInt(initParameter);
        } catch (NumberFormatException e2) {
            throw new ServletException(new StringBuffer().append("Parameter ").append(str).append(" must be a number (was ").append(initParameter).append(" instead)").toString());
        }
    }

    @Override // javax.servlet.Filter
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws ServletException, IOException {
        doFilter((HttpServletRequest) servletRequest, (HttpServletResponse) servletResponse, filterChain);
    }

    public void doFilter(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, FilterChain filterChain) throws ServletException, IOException {
        Continuation continuation = getContinuation(httpServletRequest);
        try {
            boolean zAcceptRequest = acceptRequest();
            if (!zAcceptRequest) {
                if (continuation.isPending()) {
                    Log.debug("Request {} / {} was already queued, rejecting", httpServletRequest.getRequestURI(), continuation);
                    dropFromQueue(continuation);
                    continuation.reset();
                } else if (queueRequest(httpServletRequest, httpServletResponse, continuation)) {
                    zAcceptRequest = acceptRequest();
                }
            }
            if (zAcceptRequest) {
                filterChain.doFilter(httpServletRequest, httpServletResponse);
            } else {
                rejectRequest(httpServletRequest, httpServletResponse);
            }
            if (zAcceptRequest) {
                releaseRequest();
                popQueue();
            }
        } catch (Throwable th) {
            if (0 != 0) {
                releaseRequest();
                popQueue();
            }
            throw th;
        }
    }

    private void dropFromQueue(Continuation continuation) {
        this._queue.remove(continuation);
        continuation.reset();
    }

    protected void rejectRequest(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws IOException {
        httpServletResponse.sendError(503, new StringBuffer().append("Too many active connections to resource ").append(httpServletRequest.getRequestURI()).toString());
    }

    private void popQueue() {
        synchronized (this._queue) {
            if (!this._queue.isEmpty()) {
                Continuation continuation = (Continuation) this._queue.remove(0);
                Log.debug("Resuming continuation {}", continuation, null);
                continuation.resume();
            }
        }
    }

    private void releaseRequest() {
        synchronized (this._lock) {
            this._current--;
        }
    }

    private boolean acceptRequest() {
        synchronized (this._lock) {
            if (this._current < this._maximum) {
                this._current++;
                return true;
            }
            return false;
        }
    }

    private boolean queueRequest(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Continuation continuation) throws ServletException, IOException {
        synchronized (this._queue) {
            if (this._queue.size() >= this._queueSize) {
                Log.debug("Queue is full, rejecting request {}", httpServletRequest.getRequestURI(), null);
                return false;
            }
            Log.debug("Queuing request {} / {}", httpServletRequest.getRequestURI(), continuation);
            this._queue.add(continuation);
            continuation.suspend(this._queueTimeout);
            Log.debug("Resuming blocking continuation for request {}", httpServletRequest.getRequestURI(), null);
            return true;
        }
    }

    private Continuation getContinuation(ServletRequest servletRequest) {
        return (Continuation) servletRequest.getAttribute("org.mortbay.jetty.ajax.Continuation");
    }

    @Override // javax.servlet.Filter
    public void destroy() {
        this._queue.clear();
    }
}
