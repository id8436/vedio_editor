package com.google.gdata.client.media;

import com.google.gdata.client.uploader.ProgressListener;
import com.google.gdata.client.uploader.ResumableHttpFileUploader;
import com.google.gdata.data.IEntry;
import com.google.gdata.data.media.MediaFileSource;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.ResumableUploadException;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.common.base.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes3.dex */
public class ResumableGDataFileUploader extends ResumableHttpFileUploader {
    public static final String RESUMABLE_EDIT_MEDIA_REL = "resumable-edit-media";
    private final MediaService service;

    public enum RequestType {
        INSERT,
        UPDATE,
        UPDATE_MEDIA_ONLY
    }

    private ResumableGDataFileUploader(URL url, MediaFileSource mediaFileSource, MediaService mediaService, long j, ExecutorService executorService, ProgressListener progressListener, long j2) throws IOException, ServiceException {
        super(url, mediaFileSource.getMediaFile(), executorService, progressListener, j, j2);
        this.service = mediaService;
    }

    public <E extends IEntry> E getResponse(Class<E> cls) throws IOException, ServiceException {
        InputStream inputStream = super.getResponse().getInputStream();
        if (getUploadState() == ResumableHttpFileUploader.UploadState.CLIENT_ERROR) {
            throw new ResumableUploadException("client error");
        }
        if (inputStream != null) {
            return (E) this.service.parseResumableUploadResponse(inputStream, ContentType.ATOM, cls);
        }
        System.out.println("No response found");
        return null;
    }

    public class Builder {
        private ProgressListener listener;
        private IEntry mediaEntry;
        private MediaFileSource mediaFile;
        private MediaService mediaService;
        private String mediaTitle;
        private URL mediaUrl;
        private long chunkSize = ResumableHttpFileUploader.DEFAULT_MAX_CHUNK_SIZE;
        private ExecutorService executor = Executors.newSingleThreadExecutor();
        private long progressInterval = 100;
        RequestType requestType = RequestType.INSERT;

        public Builder(MediaService mediaService, URL url, MediaFileSource mediaFileSource, IEntry iEntry) {
            this.mediaService = mediaService;
            this.mediaUrl = url;
            this.mediaFile = mediaFileSource;
            this.mediaEntry = iEntry;
        }

        public Builder(MediaService mediaService, MediaFileSource mediaFileSource, IEntry iEntry) {
            this.mediaEntry = iEntry;
            this.mediaFile = mediaFileSource;
            this.mediaService = mediaService;
        }

        public Builder title(String str) {
            this.mediaTitle = str;
            return this;
        }

        public Builder chunkSize(long j) {
            this.chunkSize = j;
            return this;
        }

        public Builder executor(ExecutorService executorService) {
            this.executor = executorService;
            return this;
        }

        public Builder trackProgress(ProgressListener progressListener, long j) {
            this.listener = progressListener;
            this.progressInterval = j;
            return this;
        }

        public Builder requestType(RequestType requestType) {
            this.requestType = requestType;
            return this;
        }

        public ResumableGDataFileUploader build() throws IOException, ServiceException {
            URL urlCreateResumableUpdateSession;
            Preconditions.checkState((this.mediaUrl == null && this.mediaEntry == null) ? false : true);
            Preconditions.checkNotNull(this.mediaService);
            Preconditions.checkNotNull(this.mediaFile);
            switch (this.requestType) {
                case INSERT:
                    if (this.mediaEntry != null) {
                        urlCreateResumableUpdateSession = this.mediaService.createResumableUploadSession(this.mediaUrl, this.mediaEntry, this.mediaFile);
                    } else {
                        urlCreateResumableUpdateSession = this.mediaService.createResumableUploadSession(this.mediaUrl, this.mediaTitle, this.mediaFile);
                    }
                    break;
                case UPDATE:
                    urlCreateResumableUpdateSession = this.mediaService.createResumableUpdateSession(new URL(this.mediaEntry.getResumableEditMediaLink().getHref()), this.mediaEntry, this.mediaFile, false);
                    break;
                case UPDATE_MEDIA_ONLY:
                    if (this.mediaEntry != null) {
                        this.mediaUrl = new URL(this.mediaEntry.getResumableEditMediaLink().getHref());
                    }
                    urlCreateResumableUpdateSession = this.mediaService.createResumableUpdateSession(this.mediaUrl, this.mediaEntry, this.mediaFile, true);
                    break;
                default:
                    urlCreateResumableUpdateSession = null;
                    break;
            }
            ResumableGDataFileUploader resumableGDataFileUploader = new ResumableGDataFileUploader(urlCreateResumableUpdateSession, this.mediaFile, this.mediaService, this.chunkSize, this.executor, this.listener, this.progressInterval);
            resumableGDataFileUploader.addHeader("Content-Type", this.mediaFile.getContentType());
            return resumableGDataFileUploader;
        }
    }
}
