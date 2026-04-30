package com.google.gdata.client.uploader;

/* JADX INFO: loaded from: classes3.dex */
public interface BackoffPolicy {
    public static final BackoffPolicy DEFAULT = new BackoffPolicy() { // from class: com.google.gdata.client.uploader.BackoffPolicy.1
        private static final long BACKOFF_DELAY_LIMIT_MS = 64000;
        private static final long BACKOFF_FACTOR = 2;
        private static final long INITIAL_BACKOFF_MS = 500;
        private long backoffMs = INITIAL_BACKOFF_MS;

        @Override // com.google.gdata.client.uploader.BackoffPolicy
        public long getNextBackoffMs() {
            long j = BACKOFF_DELAY_LIMIT_MS;
            long j2 = this.backoffMs;
            long j3 = this.backoffMs * 2;
            if (j3 <= BACKOFF_DELAY_LIMIT_MS) {
                j = j3;
            }
            this.backoffMs = j;
            return j2;
        }

        @Override // com.google.gdata.client.uploader.BackoffPolicy
        public void reset() {
            this.backoffMs = INITIAL_BACKOFF_MS;
        }
    };
    public static final long STOP = -1;

    long getNextBackoffMs();

    void reset();
}
