package com.adobe.mobile;

import android.database.DatabaseUtils;
import android.database.SQLException;
import com.adobe.mobile.AbstractDatabaseBacking;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
abstract class AbstractHitDatabase extends AbstractDatabaseBacking {
    protected String dbCreateStatement;
    protected long lastHitTimestamp;
    protected long numberOfUnsentHits;
    private TimerTask referrerTask;
    private Timer referrerTimer;
    protected boolean bgThreadActive = false;
    protected final Object backgroundMutex = new Object();
    private final Object referrerTimerMutex = new Object();

    AbstractHitDatabase() {
    }

    protected Hit selectOldestHit() throws UnsupportedOperationException {
        throw new UnsupportedOperationException("getFirstHitInQueue must be overwritten");
    }

    protected Runnable workerThread() throws UnsupportedOperationException {
        throw new UnsupportedOperationException("workerThread must be overwritten");
    }

    @Override // com.adobe.mobile.AbstractDatabaseBacking
    protected void initializeDatabase() {
        try {
            this.database.execSQL(this.dbCreateStatement);
        } catch (SQLException e2) {
            StaticMethods.logErrorFormat("%s - Unable to create database due to a sql error (%s)", this.logPrefix, e2.getLocalizedMessage());
        } catch (NullPointerException e3) {
            StaticMethods.logErrorFormat("%s - Unable to create database due to an invalid path (%s)", this.logPrefix, e3.getLocalizedMessage());
        } catch (Exception e4) {
            StaticMethods.logErrorFormat("%s - Unable to create database due to an unexpected error (%s)", this.logPrefix, e4.getLocalizedMessage());
        }
    }

    protected void deleteHit(String str) throws AbstractDatabaseBacking.CorruptedDatabaseException {
        if (str == null || str.trim().length() == 0) {
            StaticMethods.logDebugFormat("%s - Unable to delete hit due to an invalid parameter", this.logPrefix);
            return;
        }
        synchronized (this.dbMutex) {
            try {
                try {
                    this.database.delete("HITS", "ID = ?", new String[]{str});
                    this.numberOfUnsentHits--;
                } catch (SQLException e2) {
                    StaticMethods.logErrorFormat("%s - Unable to delete hit due to a sql error (%s)", this.logPrefix, e2.getLocalizedMessage());
                    throw new AbstractDatabaseBacking.CorruptedDatabaseException("Unable to delete, database probably corrupted (" + e2.getLocalizedMessage() + ")");
                }
            } catch (NullPointerException e3) {
                StaticMethods.logErrorFormat("%s - Unable to delete hit due to an unopened database (%s)", this.logPrefix, e3.getLocalizedMessage());
            } catch (Exception e4) {
                StaticMethods.logErrorFormat("%s - Unable to delete hit due to an unexpected error (%s)", this.logPrefix, e4.getLocalizedMessage());
                throw new AbstractDatabaseBacking.CorruptedDatabaseException("Unexpected exception, database probably corrupted (" + e4.getLocalizedMessage() + ")");
            }
        }
    }

    protected void clearTrackingQueue() {
        synchronized (this.dbMutex) {
            try {
                try {
                    this.database.delete("HITS", null, null);
                    this.numberOfUnsentHits = 0L;
                } catch (Exception e2) {
                    StaticMethods.logErrorFormat("%s - Unable to clear tracking queue due to an unexpected error (%s)", this.logPrefix, e2.getLocalizedMessage());
                }
            } catch (SQLException e3) {
                StaticMethods.logErrorFormat("%s - Unable to clear tracking queue due to a sql error (%s)", this.logPrefix, e3.getLocalizedMessage());
            } catch (NullPointerException e4) {
                StaticMethods.logErrorFormat("%s - Unable to clear tracking queue due to an unopened database (%s)", this.logPrefix, e4.getLocalizedMessage());
            }
        }
    }

    protected void bringOnline() {
        if (!this.bgThreadActive) {
            this.bgThreadActive = true;
            synchronized (this.backgroundMutex) {
                new Thread(workerThread(), "ADBMobileBackgroundThread").start();
            }
        }
    }

    protected void kick(boolean z) {
        MobileConfig mobileConfig = MobileConfig.getInstance();
        if (!ReferrerHandler.getReferrerProcessed() && mobileConfig.getReferrerTimeout() > 0) {
            synchronized (this.referrerTimerMutex) {
                if (this.referrerTask == null) {
                    try {
                        this.referrerTask = new ReferrerTimeoutTask(z);
                        this.referrerTimer = new Timer();
                        this.referrerTimer.schedule(this.referrerTask, MobileConfig.getInstance().getReferrerTimeout());
                    } catch (Exception e2) {
                        StaticMethods.logErrorFormat("%s - Error creating referrer timer (%s)", this.logPrefix, e2.getMessage());
                    }
                }
            }
            return;
        }
        if (this.referrerTimer != null) {
            synchronized (this.referrerTimerMutex) {
                try {
                    this.referrerTimer.cancel();
                } catch (Exception e3) {
                    StaticMethods.logErrorFormat("%s - Error cancelling referrer timer (%s)", this.logPrefix, e3.getMessage());
                }
                this.referrerTask = null;
            }
        }
        if (mobileConfig.getPrivacyStatus() == MobilePrivacyStatus.MOBILE_PRIVACY_STATUS_OPT_IN) {
            if ((!mobileConfig.getOfflineTrackingEnabled() || this.numberOfUnsentHits > ((long) mobileConfig.getBatchLimit())) || z) {
                bringOnline();
            }
        }
    }

    protected void forceKick() {
        kick(true);
    }

    protected long getTrackingQueueSize() {
        long jQueryNumEntries;
        synchronized (this.dbMutex) {
            try {
                jQueryNumEntries = DatabaseUtils.queryNumEntries(this.database, "HITS");
            } catch (SQLException e2) {
                StaticMethods.logErrorFormat("%s - Unable to get tracking queue size due to a sql error (%s)", this.logPrefix, e2.getLocalizedMessage());
                jQueryNumEntries = 0;
            } catch (NullPointerException e3) {
                StaticMethods.logErrorFormat("%s - Unable to get tracking queue size due to an unopened database (%s)", this.logPrefix, e3.getLocalizedMessage());
                jQueryNumEntries = 0;
            } catch (Exception e4) {
                StaticMethods.logErrorFormat("%s - Unable to get tracking queue size due to an unexpected error (%s)", this.logPrefix, e4.getLocalizedMessage());
                jQueryNumEntries = 0;
            }
        }
        return jQueryNumEntries;
    }

    @Override // com.adobe.mobile.AbstractDatabaseBacking
    protected void postReset() {
        this.numberOfUnsentHits = 0L;
    }

    public class Hit {
        String identifier;
        String postBody;
        String postType;
        int timeout;
        long timestamp;
        String urlFragment;

        protected Hit() {
        }
    }

    public class ReferrerTimeoutTask extends TimerTask {
        private boolean kickFlag;

        ReferrerTimeoutTask(boolean z) {
            this.kickFlag = false;
            this.kickFlag = z;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            ReferrerHandler.setReferrerProcessed(true);
            StaticMethods.logDebugFormat("%s - Referrer timeout has expired without referrer data", AbstractHitDatabase.this.logPrefix);
            AbstractHitDatabase.this.kick(this.kickFlag);
        }
    }
}
