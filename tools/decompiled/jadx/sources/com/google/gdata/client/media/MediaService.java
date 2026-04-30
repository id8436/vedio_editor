package com.google.gdata.client.media;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.client.GoogleService;
import com.google.gdata.client.Service;
import com.google.gdata.client.http.HttpGDataRequest;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.IEntry;
import com.google.gdata.data.ParseSource;
import com.google.gdata.data.media.IMediaContent;
import com.google.gdata.data.media.IMediaEntry;
import com.google.gdata.data.media.MediaFileSource;
import com.google.gdata.data.media.MediaMultipart;
import com.google.gdata.data.media.MediaSource;
import com.google.gdata.data.media.MediaStreamSource;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.RedirectRequiredException;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.common.base.PercentEscaper;
import com.google.gdata.util.common.base.Preconditions;
import com.google.gdata.wireformats.AltFormat;
import com.google.gdata.wireformats.AltRegistry;
import com.google.gdata.wireformats.input.media.MediaMultipartParser;
import com.google.gdata.wireformats.input.media.MediaParser;
import com.google.gdata.wireformats.output.media.MediaGenerator;
import com.google.gdata.wireformats.output.media.MediaMultipartGenerator;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import javax.mail.MessagingException;

/* JADX INFO: loaded from: classes3.dex */
public class MediaService extends GoogleService {
    public static final int DEFAULT_CHUNKED_BUFFER_SIZE = 0;
    private static final AltRegistry MEDIA_REGISTRY = new AltRegistry(Service.getDefaultAltRegistry());
    public static final int NO_CHUNKED_MEDIA_REQUEST = -1;
    private static final PercentEscaper SLUG_ESCAPER;
    private int chunkedBufferSize;

    public static AltRegistry getDefaultAltRegistry() {
        return MEDIA_REGISTRY;
    }

    static {
        MEDIA_REGISTRY.register(AltFormat.MEDIA, new MediaParser(), new MediaGenerator());
        MEDIA_REGISTRY.register(AltFormat.MEDIA_MULTIPART, new MediaMultipartParser(), new MediaMultipartGenerator());
        MEDIA_REGISTRY.lock();
        SLUG_ESCAPER = new PercentEscaper(" !\"#$&'()*+,-./:;<=>?@[\\]^_`{|}~", false);
    }

    public MediaService(String str, String str2) {
        super(str, str2);
        this.chunkedBufferSize = 0;
        setAltRegistry(MEDIA_REGISTRY);
    }

    public MediaService(String str, Service.GDataRequestFactory gDataRequestFactory, AuthTokenFactory authTokenFactory) {
        super(str, gDataRequestFactory, authTokenFactory);
        this.chunkedBufferSize = 0;
        setAltRegistry(MEDIA_REGISTRY);
    }

    public MediaService(String str, String str2, String str3, String str4) {
        super(str, str2, str3, str4);
        this.chunkedBufferSize = 0;
        setAltRegistry(MEDIA_REGISTRY);
    }

    public void setChunkedMediaUpload(int i) {
        this.chunkedBufferSize = i;
    }

    private MediaSource getMediaResource(URL url, ContentType contentType, DateTime dateTime) throws IOException, ServiceException {
        try {
            startVersionScope();
            Service.GDataRequest gDataRequestCreateRequest = createRequest(Service.GDataRequest.RequestType.QUERY, url, contentType);
            gDataRequestCreateRequest.setIfModifiedSince(dateTime);
            gDataRequestCreateRequest.execute();
            MediaStreamSource mediaStreamSource = new MediaStreamSource(gDataRequestCreateRequest.getResponseStream(), gDataRequestCreateRequest.getResponseContentType().toString());
            DateTime responseDateHeader = gDataRequestCreateRequest.getResponseDateHeader("Last-Modified");
            if (responseDateHeader != null) {
                mediaStreamSource.setLastModified(responseDateHeader);
            }
            String responseHeader = gDataRequestCreateRequest.getResponseHeader("ETag");
            if (responseHeader != null) {
                mediaStreamSource.setEtag(responseHeader);
            }
            return mediaStreamSource;
        } finally {
            endVersionScope();
        }
    }

    public MediaSource getMedia(IMediaContent iMediaContent, DateTime dateTime) throws IOException, ServiceException {
        URL urlHandleRedirectException;
        GoogleService.SessionExpiredException sessionExpiredException;
        try {
            try {
                URL url = new URL(iMediaContent.getUri());
                try {
                    return getMediaResource(url, iMediaContent.getMimeType(), dateTime);
                } catch (GoogleService.SessionExpiredException e2) {
                    urlHandleRedirectException = url;
                    sessionExpiredException = e2;
                    handleSessionExpiredException(sessionExpiredException);
                    return getMediaResource(urlHandleRedirectException, iMediaContent.getMimeType(), dateTime);
                }
            } catch (GoogleService.SessionExpiredException e3) {
                sessionExpiredException = e3;
                urlHandleRedirectException = null;
            }
        } catch (RedirectRequiredException e4) {
            urlHandleRedirectException = handleRedirectException(e4);
            return getMediaResource(urlHandleRedirectException, iMediaContent.getMimeType(), dateTime);
        } catch (MalformedURLException e5) {
            throw new ServiceException(CoreErrorDomain.ERR.invalidMediaSourceUri, e5);
        }
    }

    public MediaSource getMedia(IMediaContent iMediaContent) throws IOException, ServiceException {
        return getMedia(iMediaContent, null);
    }

    private void initMediaRequest(Service.GDataRequest gDataRequest, String str) {
        if (str != null) {
            gDataRequest.setHeader("Slug", escapeSlug(str));
        }
        if (this.chunkedBufferSize != -1 && (gDataRequest instanceof HttpGDataRequest)) {
            ((HttpGDataRequest) gDataRequest).getConnection().setChunkedStreamingMode(this.chunkedBufferSize);
        }
    }

    private void initMediaRequest(Service.GDataRequest gDataRequest, MediaSource mediaSource) {
        initMediaRequest(gDataRequest, mediaSource.getName());
    }

    static String escapeSlug(String str) {
        return SLUG_ESCAPER.escape(str);
    }

    @Override // com.google.gdata.client.GoogleService, com.google.gdata.client.Service
    public <E extends IEntry> E insert(URL url, E e2) throws IOException, ServiceException {
        Service.GDataRequest gDataRequestCreateRequest = null;
        Preconditions.checkNotNull(e2, "entry");
        MediaSource mediaSource = e2 instanceof IMediaEntry ? ((IMediaEntry) e2).getMediaSource() : null;
        if (mediaSource == null) {
            return (E) super.insert(url, e2);
        }
        try {
            try {
                startVersionScope();
                MediaMultipart mediaMultipart = new MediaMultipart(e2, mediaSource);
                gDataRequestCreateRequest = createRequest(Service.GDataRequest.RequestType.INSERT, url, new ContentType(mediaMultipart.getContentType()));
                initMediaRequest(gDataRequestCreateRequest, mediaSource);
                writeRequestData(gDataRequestCreateRequest, new Service.ClientOutputProperties(gDataRequestCreateRequest, e2), mediaMultipart);
                gDataRequestCreateRequest.execute();
                E e3 = (E) parseResponseData(gDataRequestCreateRequest, classOf(e2));
            } catch (MessagingException e4) {
                throw new ServiceException(CoreErrorDomain.ERR.cantWriteMimeMultipart, e4);
            }
        } finally {
            endVersionScope();
            if (gDataRequestCreateRequest != null) {
                gDataRequestCreateRequest.end();
            }
        }
    }

    public <E extends IEntry> E insert(URL url, Class<E> cls, MediaSource mediaSource) throws IOException, ServiceException {
        Preconditions.checkNotNull(mediaSource, "media");
        Service.GDataRequest gDataRequestCreateRequest = createRequest(Service.GDataRequest.RequestType.INSERT, url, new ContentType(mediaSource.getContentType()));
        try {
            startVersionScope();
            initMediaRequest(gDataRequestCreateRequest, mediaSource);
            writeRequestData(gDataRequestCreateRequest, mediaSource);
            gDataRequestCreateRequest.execute();
            return (E) parseResponseData(gDataRequestCreateRequest, cls);
        } finally {
            endVersionScope();
            gDataRequestCreateRequest.end();
        }
    }

    @Override // com.google.gdata.client.GoogleService, com.google.gdata.client.Service
    public <E extends IEntry> E update(URL url, E e2) throws IOException, ServiceException {
        return (E) super.update(url, e2);
    }

    public <E extends IEntry> E updateMedia(URL url, E e2) throws IOException, ServiceException {
        Service.GDataRequest gDataRequestCreateRequest = null;
        Preconditions.checkNotNull(e2, "entry");
        MediaSource mediaSource = e2 instanceof IMediaEntry ? ((IMediaEntry) e2).getMediaSource() : null;
        if (mediaSource == null) {
            throw new IllegalArgumentException("Must supply media entry with a media source");
        }
        try {
            try {
                startVersionScope();
                MediaMultipart mediaMultipart = new MediaMultipart(e2, mediaSource);
                gDataRequestCreateRequest = createRequest(Service.GDataRequest.RequestType.UPDATE, url, new ContentType(mediaMultipart.getContentType()));
                writeRequestData(gDataRequestCreateRequest, new Service.ClientOutputProperties(gDataRequestCreateRequest, e2), mediaMultipart);
                gDataRequestCreateRequest.execute();
                return (E) parseResponseData(gDataRequestCreateRequest, classOf(e2));
            } catch (MessagingException e3) {
                throw new ServiceException(CoreErrorDomain.ERR.cantWriteMimeMultipart, e3);
            }
        } finally {
            endVersionScope();
            if (gDataRequestCreateRequest != null) {
                gDataRequestCreateRequest.end();
            }
        }
    }

    public <E extends IEntry> E updateMedia(URL url, Class<E> cls, MediaSource mediaSource) throws IOException, ServiceException {
        Preconditions.checkNotNull(mediaSource, "media");
        Service.GDataRequest gDataRequestCreateRequest = createRequest(Service.GDataRequest.RequestType.UPDATE, url, new ContentType(mediaSource.getContentType()));
        try {
            startVersionScope();
            writeRequestData(gDataRequestCreateRequest, mediaSource);
            gDataRequestCreateRequest.execute();
            return (E) parseResponseData(gDataRequestCreateRequest, cls);
        } finally {
            endVersionScope();
            gDataRequestCreateRequest.end();
        }
    }

    private void initResumableMediaRequest(Service.GDataRequest gDataRequest, MediaFileSource mediaFileSource, String str) {
        initMediaRequest(gDataRequest, str);
        gDataRequest.setHeader("X-Upload-Content-Type", mediaFileSource.getContentType());
        gDataRequest.setHeader("X-Upload-Content-Length", new Long(mediaFileSource.getContentLength()).toString());
    }

    URL createResumableUploadSession(URL url, String str, MediaFileSource mediaFileSource) throws IOException, ServiceException {
        Service.GDataRequest gDataRequestCreateRequest = createRequest(Service.GDataRequest.RequestType.INSERT, url, new ContentType(mediaFileSource.getContentType()));
        initResumableMediaRequest(gDataRequestCreateRequest, mediaFileSource, str);
        try {
            startVersionScope();
            gDataRequestCreateRequest.execute();
            return new URL(gDataRequestCreateRequest.getResponseHeader("Location"));
        } finally {
            endVersionScope();
            gDataRequestCreateRequest.end();
        }
    }

    URL createResumableUploadSession(URL url, IEntry iEntry, MediaFileSource mediaFileSource) throws IOException, ServiceException {
        Service.GDataRequest gDataRequestCreateInsertRequest = createInsertRequest(url);
        initResumableMediaRequest(gDataRequestCreateInsertRequest, mediaFileSource, mediaFileSource.getName());
        try {
            startVersionScope();
            writeRequestData(gDataRequestCreateInsertRequest, iEntry);
            gDataRequestCreateInsertRequest.execute();
            return new URL(gDataRequestCreateInsertRequest.getResponseHeader("Location"));
        } finally {
            endVersionScope();
            gDataRequestCreateInsertRequest.end();
        }
    }

    URL createResumableUpdateSession(URL url, IEntry iEntry, MediaFileSource mediaFileSource, boolean z) throws IOException, ServiceException {
        Service.GDataRequest gDataRequestCreateUpdateRequest;
        if (z) {
            gDataRequestCreateUpdateRequest = createRequest(Service.GDataRequest.RequestType.UPDATE, url, new ContentType(mediaFileSource.getContentType()));
        } else {
            gDataRequestCreateUpdateRequest = createUpdateRequest(url);
        }
        initResumableMediaRequest(gDataRequestCreateUpdateRequest, mediaFileSource, null);
        if (iEntry.getEtag() != null) {
            gDataRequestCreateUpdateRequest.setEtag(iEntry.getEtag());
        }
        try {
            startVersionScope();
            if (!z) {
                writeRequestData(gDataRequestCreateUpdateRequest, iEntry);
            }
            gDataRequestCreateUpdateRequest.execute();
            return new URL(gDataRequestCreateUpdateRequest.getResponseHeader("Location"));
        } finally {
            endVersionScope();
            gDataRequestCreateUpdateRequest.end();
        }
    }

    <E> E parseResumableUploadResponse(InputStream inputStream, ContentType contentType, Class<E> cls) throws IOException, ServiceException {
        try {
            startVersionScope();
            return (E) parseResponseData(new ParseSource(inputStream), contentType, cls);
        } finally {
            endVersionScope();
        }
    }
}
