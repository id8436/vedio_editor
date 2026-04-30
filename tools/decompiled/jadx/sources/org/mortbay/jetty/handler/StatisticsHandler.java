package org.mortbay.jetty.handler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.Response;

/* JADX INFO: loaded from: classes3.dex */
public class StatisticsHandler extends AbstractStatisticsHandler {
    private transient long _maxRequestTime;
    private transient long _minRequestTime;
    private transient int _requests;
    private transient int _requestsActive;
    private transient int _requestsActiveMax;
    private transient int _responses1xx;
    private transient int _responses2xx;
    private transient int _responses3xx;
    private transient int _responses4xx;
    private transient int _responses5xx;
    private transient long _statsStartedAt;
    private transient long _totalRequestTime;

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.Handler
    public void handle(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws ServletException, IOException {
        synchronized (this) {
            this._requests++;
            this._requestsActive++;
            if (this._requestsActive > this._requestsActiveMax) {
                this._requestsActiveMax = this._requestsActive;
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            super.handle(str, httpServletRequest, httpServletResponse, i);
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            synchronized (this) {
                this._requestsActive--;
                if (this._requestsActive < 0) {
                    this._requestsActive = 0;
                }
                this._totalRequestTime += jCurrentTimeMillis2;
                if (jCurrentTimeMillis2 < this._minRequestTime || this._minRequestTime == 0) {
                    this._minRequestTime = jCurrentTimeMillis2;
                }
                if (jCurrentTimeMillis2 > this._maxRequestTime) {
                    this._maxRequestTime = jCurrentTimeMillis2;
                }
                switch ((httpServletResponse instanceof Response ? (Response) httpServletResponse : HttpConnection.getCurrentConnection().getResponse()).getStatus() / 100) {
                    case 1:
                        this._responses1xx++;
                        break;
                    case 2:
                        this._responses2xx++;
                        break;
                    case 3:
                        this._responses3xx++;
                        break;
                    case 4:
                        this._responses4xx++;
                        break;
                    case 5:
                        this._responses5xx++;
                        break;
                }
            }
        } catch (Throwable th) {
            long jCurrentTimeMillis3 = System.currentTimeMillis() - jCurrentTimeMillis;
            synchronized (this) {
                this._requestsActive--;
                if (this._requestsActive < 0) {
                    this._requestsActive = 0;
                }
                this._totalRequestTime += jCurrentTimeMillis3;
                if (jCurrentTimeMillis3 < this._minRequestTime || this._minRequestTime == 0) {
                    this._minRequestTime = jCurrentTimeMillis3;
                }
                if (jCurrentTimeMillis3 > this._maxRequestTime) {
                    this._maxRequestTime = jCurrentTimeMillis3;
                }
                switch ((httpServletResponse instanceof Response ? (Response) httpServletResponse : HttpConnection.getCurrentConnection().getResponse()).getStatus() / 100) {
                    case 1:
                        this._responses1xx++;
                        break;
                    case 2:
                        this._responses2xx++;
                        break;
                    case 3:
                        this._responses3xx++;
                        break;
                    case 4:
                        this._responses4xx++;
                        break;
                    case 5:
                        this._responses5xx++;
                        break;
                }
                throw th;
            }
        }
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public void statsReset() {
        synchronized (this) {
            this._statsStartedAt = System.currentTimeMillis();
            this._requests = 0;
            this._minRequestTime = 0L;
            this._maxRequestTime = 0L;
            this._totalRequestTime = 0L;
            this._requestsActiveMax = this._requestsActive;
            this._requestsActive = 0;
            this._responses1xx = 0;
            this._responses2xx = 0;
            this._responses3xx = 0;
            this._responses4xx = 0;
            this._responses5xx = 0;
        }
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public int getRequests() {
        int i;
        synchronized (this) {
            i = this._requests;
        }
        return i;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public int getRequestsActive() {
        int i;
        synchronized (this) {
            i = this._requestsActive;
        }
        return i;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public int getRequestsActiveMax() {
        int i;
        synchronized (this) {
            i = this._requestsActiveMax;
        }
        return i;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public int getResponses1xx() {
        int i;
        synchronized (this) {
            i = this._responses1xx;
        }
        return i;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public int getResponses2xx() {
        int i;
        synchronized (this) {
            i = this._responses2xx;
        }
        return i;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public int getResponses3xx() {
        int i;
        synchronized (this) {
            i = this._responses3xx;
        }
        return i;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public int getResponses4xx() {
        int i;
        synchronized (this) {
            i = this._responses4xx;
        }
        return i;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public int getResponses5xx() {
        int i;
        synchronized (this) {
            i = this._responses5xx;
        }
        return i;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public long getStatsOnMs() {
        long jCurrentTimeMillis;
        synchronized (this) {
            jCurrentTimeMillis = System.currentTimeMillis() - this._statsStartedAt;
        }
        return jCurrentTimeMillis;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public long getRequestTimeMin() {
        long j;
        synchronized (this) {
            j = this._minRequestTime;
        }
        return j;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public long getRequestTimeMax() {
        long j;
        synchronized (this) {
            j = this._maxRequestTime;
        }
        return j;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public long getRequestTimeTotal() {
        long j;
        synchronized (this) {
            j = this._totalRequestTime;
        }
        return j;
    }

    @Override // org.mortbay.jetty.handler.AbstractStatisticsHandler
    public long getRequestTimeAverage() {
        long j;
        synchronized (this) {
            j = this._requests == 0 ? 0L : this._totalRequestTime / ((long) this._requests);
        }
        return j;
    }
}
