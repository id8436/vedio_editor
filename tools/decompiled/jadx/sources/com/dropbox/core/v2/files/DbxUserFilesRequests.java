package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.v2.DbxRawClientV2;
import com.dropbox.core.v2.async.PollArg;
import com.dropbox.core.v2.async.PollError;
import com.dropbox.core.v2.async.PollErrorException;
import com.dropbox.core.v2.fileproperties.AddPropertiesArg;
import com.dropbox.core.v2.fileproperties.AddPropertiesError;
import com.dropbox.core.v2.fileproperties.AddPropertiesErrorException;
import com.dropbox.core.v2.fileproperties.GetTemplateArg;
import com.dropbox.core.v2.fileproperties.GetTemplateResult;
import com.dropbox.core.v2.fileproperties.InvalidPropertyGroupError;
import com.dropbox.core.v2.fileproperties.InvalidPropertyGroupErrorException;
import com.dropbox.core.v2.fileproperties.ListTemplateResult;
import com.dropbox.core.v2.fileproperties.OverwritePropertyGroupArg;
import com.dropbox.core.v2.fileproperties.PropertyGroup;
import com.dropbox.core.v2.fileproperties.PropertyGroupUpdate;
import com.dropbox.core.v2.fileproperties.RemovePropertiesArg;
import com.dropbox.core.v2.fileproperties.RemovePropertiesError;
import com.dropbox.core.v2.fileproperties.RemovePropertiesErrorException;
import com.dropbox.core.v2.fileproperties.TemplateError;
import com.dropbox.core.v2.fileproperties.TemplateErrorException;
import com.dropbox.core.v2.fileproperties.UpdatePropertiesArg;
import com.dropbox.core.v2.fileproperties.UpdatePropertiesError;
import com.dropbox.core.v2.fileproperties.UpdatePropertiesErrorException;
import com.dropbox.core.v2.files.AlphaGetMetadataArg;
import com.dropbox.core.v2.files.AlphaGetMetadataError;
import com.dropbox.core.v2.files.CommitInfo;
import com.dropbox.core.v2.files.CommitInfoWithProperties;
import com.dropbox.core.v2.files.CreateFolderArg;
import com.dropbox.core.v2.files.CreateFolderError;
import com.dropbox.core.v2.files.CreateFolderResult;
import com.dropbox.core.v2.files.DeleteArg;
import com.dropbox.core.v2.files.DeleteBatchArg;
import com.dropbox.core.v2.files.DeleteBatchJobStatus;
import com.dropbox.core.v2.files.DeleteBatchLaunch;
import com.dropbox.core.v2.files.DeleteError;
import com.dropbox.core.v2.files.DeleteResult;
import com.dropbox.core.v2.files.DownloadArg;
import com.dropbox.core.v2.files.DownloadError;
import com.dropbox.core.v2.files.FileMetadata;
import com.dropbox.core.v2.files.FolderMetadata;
import com.dropbox.core.v2.files.GetCopyReferenceArg;
import com.dropbox.core.v2.files.GetCopyReferenceError;
import com.dropbox.core.v2.files.GetCopyReferenceResult;
import com.dropbox.core.v2.files.GetMetadataArg;
import com.dropbox.core.v2.files.GetMetadataError;
import com.dropbox.core.v2.files.GetTemporaryLinkArg;
import com.dropbox.core.v2.files.GetTemporaryLinkError;
import com.dropbox.core.v2.files.GetTemporaryLinkResult;
import com.dropbox.core.v2.files.GetThumbnailBatchArg;
import com.dropbox.core.v2.files.GetThumbnailBatchError;
import com.dropbox.core.v2.files.GetThumbnailBatchResult;
import com.dropbox.core.v2.files.ListFolderArg;
import com.dropbox.core.v2.files.ListFolderContinueArg;
import com.dropbox.core.v2.files.ListFolderContinueError;
import com.dropbox.core.v2.files.ListFolderError;
import com.dropbox.core.v2.files.ListFolderGetLatestCursorResult;
import com.dropbox.core.v2.files.ListFolderLongpollArg;
import com.dropbox.core.v2.files.ListFolderLongpollError;
import com.dropbox.core.v2.files.ListFolderLongpollResult;
import com.dropbox.core.v2.files.ListFolderResult;
import com.dropbox.core.v2.files.ListRevisionsArg;
import com.dropbox.core.v2.files.ListRevisionsError;
import com.dropbox.core.v2.files.ListRevisionsResult;
import com.dropbox.core.v2.files.Metadata;
import com.dropbox.core.v2.files.PreviewArg;
import com.dropbox.core.v2.files.PreviewError;
import com.dropbox.core.v2.files.RelocationArg;
import com.dropbox.core.v2.files.RelocationBatchArg;
import com.dropbox.core.v2.files.RelocationBatchJobStatus;
import com.dropbox.core.v2.files.RelocationBatchLaunch;
import com.dropbox.core.v2.files.RelocationError;
import com.dropbox.core.v2.files.RelocationResult;
import com.dropbox.core.v2.files.RestoreArg;
import com.dropbox.core.v2.files.RestoreError;
import com.dropbox.core.v2.files.SaveCopyReferenceArg;
import com.dropbox.core.v2.files.SaveCopyReferenceError;
import com.dropbox.core.v2.files.SaveCopyReferenceResult;
import com.dropbox.core.v2.files.SaveUrlArg;
import com.dropbox.core.v2.files.SaveUrlError;
import com.dropbox.core.v2.files.SaveUrlJobStatus;
import com.dropbox.core.v2.files.SaveUrlResult;
import com.dropbox.core.v2.files.SearchArg;
import com.dropbox.core.v2.files.SearchError;
import com.dropbox.core.v2.files.SearchResult;
import com.dropbox.core.v2.files.ThumbnailArg;
import com.dropbox.core.v2.files.ThumbnailError;
import com.dropbox.core.v2.files.UploadSessionAppendArg;
import com.dropbox.core.v2.files.UploadSessionCursor;
import com.dropbox.core.v2.files.UploadSessionFinishArg;
import com.dropbox.core.v2.files.UploadSessionFinishBatchArg;
import com.dropbox.core.v2.files.UploadSessionFinishBatchJobStatus;
import com.dropbox.core.v2.files.UploadSessionFinishBatchLaunch;
import com.dropbox.core.v2.files.UploadSessionStartArg;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class DbxUserFilesRequests {
    private final DbxRawClientV2 client;

    public DbxUserFilesRequests(DbxRawClientV2 dbxRawClientV2) {
        this.client = dbxRawClientV2;
    }

    Metadata alphaGetMetadata(AlphaGetMetadataArg alphaGetMetadataArg) throws DbxException {
        try {
            return (Metadata) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/alpha/get_metadata", alphaGetMetadataArg, false, AlphaGetMetadataArg.Serializer.INSTANCE, Metadata.Serializer.INSTANCE, AlphaGetMetadataError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new AlphaGetMetadataErrorException("2/files/alpha/get_metadata", e2.getRequestId(), e2.getUserMessage(), (AlphaGetMetadataError) e2.getErrorValue());
        }
    }

    public Metadata alphaGetMetadata(String str) throws DbxException {
        return alphaGetMetadata(new AlphaGetMetadataArg(str));
    }

    public AlphaGetMetadataBuilder alphaGetMetadataBuilder(String str) {
        return new AlphaGetMetadataBuilder(this, AlphaGetMetadataArg.newBuilder(str));
    }

    AlphaUploadUploader alphaUpload(CommitInfoWithProperties commitInfoWithProperties) throws DbxException {
        return new AlphaUploadUploader(this.client.uploadStyle(this.client.getHost().getContent(), "2/files/alpha/upload", commitInfoWithProperties, false, CommitInfoWithProperties.Serializer.INSTANCE), this.client.getUserId());
    }

    public AlphaUploadUploader alphaUpload(String str) throws DbxException {
        return alphaUpload(new CommitInfoWithProperties(str));
    }

    public AlphaUploadBuilder alphaUploadBuilder(String str) {
        return new AlphaUploadBuilder(this, CommitInfoWithProperties.newBuilder(str));
    }

    Metadata copy(RelocationArg relocationArg) throws DbxException {
        try {
            return (Metadata) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/copy", relocationArg, false, RelocationArg.Serializer.INSTANCE, Metadata.Serializer.INSTANCE, RelocationError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new RelocationErrorException("2/files/copy", e2.getRequestId(), e2.getUserMessage(), (RelocationError) e2.getErrorValue());
        }
    }

    @Deprecated
    public Metadata copy(String str, String str2) throws DbxException {
        return copy(new RelocationArg(str, str2));
    }

    @Deprecated
    public CopyBuilder copyBuilder(String str, String str2) {
        return new CopyBuilder(this, RelocationArg.newBuilder(str, str2));
    }

    RelocationBatchLaunch copyBatch(RelocationBatchArg relocationBatchArg) throws DbxException {
        try {
            return (RelocationBatchLaunch) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/copy_batch", relocationBatchArg, false, RelocationBatchArg.Serializer.INSTANCE, RelocationBatchLaunch.Serializer.INSTANCE, StoneSerializers.void_());
        } catch (DbxWrappedException e2) {
            throw new DbxApiException(e2.getRequestId(), e2.getUserMessage(), "Unexpected error response for \"copy_batch\":" + e2.getErrorValue());
        }
    }

    public RelocationBatchLaunch copyBatch(List<RelocationPath> list) throws DbxException {
        return copyBatch(new RelocationBatchArg(list));
    }

    public CopyBatchBuilder copyBatchBuilder(List<RelocationPath> list) {
        return new CopyBatchBuilder(this, RelocationBatchArg.newBuilder(list));
    }

    RelocationBatchJobStatus copyBatchCheck(PollArg pollArg) throws DbxException {
        try {
            return (RelocationBatchJobStatus) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/copy_batch/check", pollArg, false, PollArg.Serializer.INSTANCE, RelocationBatchJobStatus.Serializer.INSTANCE, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new PollErrorException("2/files/copy_batch/check", e2.getRequestId(), e2.getUserMessage(), (PollError) e2.getErrorValue());
        }
    }

    public RelocationBatchJobStatus copyBatchCheck(String str) throws DbxException {
        return copyBatchCheck(new PollArg(str));
    }

    GetCopyReferenceResult copyReferenceGet(GetCopyReferenceArg getCopyReferenceArg) throws DbxException {
        try {
            return (GetCopyReferenceResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/copy_reference/get", getCopyReferenceArg, false, GetCopyReferenceArg.Serializer.INSTANCE, GetCopyReferenceResult.Serializer.INSTANCE, GetCopyReferenceError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new GetCopyReferenceErrorException("2/files/copy_reference/get", e2.getRequestId(), e2.getUserMessage(), (GetCopyReferenceError) e2.getErrorValue());
        }
    }

    public GetCopyReferenceResult copyReferenceGet(String str) throws DbxException {
        return copyReferenceGet(new GetCopyReferenceArg(str));
    }

    SaveCopyReferenceResult copyReferenceSave(SaveCopyReferenceArg saveCopyReferenceArg) throws DbxException {
        try {
            return (SaveCopyReferenceResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/copy_reference/save", saveCopyReferenceArg, false, SaveCopyReferenceArg.Serializer.INSTANCE, SaveCopyReferenceResult.Serializer.INSTANCE, SaveCopyReferenceError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new SaveCopyReferenceErrorException("2/files/copy_reference/save", e2.getRequestId(), e2.getUserMessage(), (SaveCopyReferenceError) e2.getErrorValue());
        }
    }

    public SaveCopyReferenceResult copyReferenceSave(String str, String str2) throws DbxException {
        return copyReferenceSave(new SaveCopyReferenceArg(str, str2));
    }

    RelocationResult copyV2(RelocationArg relocationArg) throws DbxException {
        try {
            return (RelocationResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/copy_v2", relocationArg, false, RelocationArg.Serializer.INSTANCE, RelocationResult.Serializer.INSTANCE, RelocationError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new RelocationErrorException("2/files/copy_v2", e2.getRequestId(), e2.getUserMessage(), (RelocationError) e2.getErrorValue());
        }
    }

    public RelocationResult copyV2(String str, String str2) throws DbxException {
        return copyV2(new RelocationArg(str, str2));
    }

    public CopyV2Builder copyV2Builder(String str, String str2) {
        return new CopyV2Builder(this, RelocationArg.newBuilder(str, str2));
    }

    FolderMetadata createFolder(CreateFolderArg createFolderArg) throws DbxException {
        try {
            return (FolderMetadata) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/create_folder", createFolderArg, false, CreateFolderArg.Serializer.INSTANCE, FolderMetadata.Serializer.INSTANCE, CreateFolderError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new CreateFolderErrorException("2/files/create_folder", e2.getRequestId(), e2.getUserMessage(), (CreateFolderError) e2.getErrorValue());
        }
    }

    @Deprecated
    public FolderMetadata createFolder(String str) throws DbxException {
        return createFolder(new CreateFolderArg(str));
    }

    @Deprecated
    public FolderMetadata createFolder(String str, boolean z) throws DbxException {
        return createFolder(new CreateFolderArg(str, z));
    }

    CreateFolderResult createFolderV2(CreateFolderArg createFolderArg) throws DbxException {
        try {
            return (CreateFolderResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/create_folder_v2", createFolderArg, false, CreateFolderArg.Serializer.INSTANCE, CreateFolderResult.Serializer.INSTANCE, CreateFolderError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new CreateFolderErrorException("2/files/create_folder_v2", e2.getRequestId(), e2.getUserMessage(), (CreateFolderError) e2.getErrorValue());
        }
    }

    public CreateFolderResult createFolderV2(String str) throws DbxException {
        return createFolderV2(new CreateFolderArg(str));
    }

    public CreateFolderResult createFolderV2(String str, boolean z) throws DbxException {
        return createFolderV2(new CreateFolderArg(str, z));
    }

    Metadata delete(DeleteArg deleteArg) throws DbxException {
        try {
            return (Metadata) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/delete", deleteArg, false, DeleteArg.Serializer.INSTANCE, Metadata.Serializer.INSTANCE, DeleteError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new DeleteErrorException("2/files/delete", e2.getRequestId(), e2.getUserMessage(), (DeleteError) e2.getErrorValue());
        }
    }

    @Deprecated
    public Metadata delete(String str) throws DbxException {
        return delete(new DeleteArg(str));
    }

    DeleteBatchLaunch deleteBatch(DeleteBatchArg deleteBatchArg) throws DbxException {
        try {
            return (DeleteBatchLaunch) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/delete_batch", deleteBatchArg, false, DeleteBatchArg.Serializer.INSTANCE, DeleteBatchLaunch.Serializer.INSTANCE, StoneSerializers.void_());
        } catch (DbxWrappedException e2) {
            throw new DbxApiException(e2.getRequestId(), e2.getUserMessage(), "Unexpected error response for \"delete_batch\":" + e2.getErrorValue());
        }
    }

    public DeleteBatchLaunch deleteBatch(List<DeleteArg> list) throws DbxException {
        return deleteBatch(new DeleteBatchArg(list));
    }

    DeleteBatchJobStatus deleteBatchCheck(PollArg pollArg) throws DbxException {
        try {
            return (DeleteBatchJobStatus) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/delete_batch/check", pollArg, false, PollArg.Serializer.INSTANCE, DeleteBatchJobStatus.Serializer.INSTANCE, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new PollErrorException("2/files/delete_batch/check", e2.getRequestId(), e2.getUserMessage(), (PollError) e2.getErrorValue());
        }
    }

    public DeleteBatchJobStatus deleteBatchCheck(String str) throws DbxException {
        return deleteBatchCheck(new PollArg(str));
    }

    DeleteResult deleteV2(DeleteArg deleteArg) throws DbxException {
        try {
            return (DeleteResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/delete_v2", deleteArg, false, DeleteArg.Serializer.INSTANCE, DeleteResult.Serializer.INSTANCE, DeleteError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new DeleteErrorException("2/files/delete_v2", e2.getRequestId(), e2.getUserMessage(), (DeleteError) e2.getErrorValue());
        }
    }

    public DeleteResult deleteV2(String str) throws DbxException {
        return deleteV2(new DeleteArg(str));
    }

    DbxDownloader<FileMetadata> download(DownloadArg downloadArg, List<HttpRequestor.Header> list) throws DbxException {
        try {
            return this.client.downloadStyle(this.client.getHost().getContent(), "2/files/download", downloadArg, false, list, DownloadArg.Serializer.INSTANCE, FileMetadata.Serializer.INSTANCE, DownloadError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new DownloadErrorException("2/files/download", e2.getRequestId(), e2.getUserMessage(), (DownloadError) e2.getErrorValue());
        }
    }

    public DbxDownloader<FileMetadata> download(String str) throws DbxException {
        return download(new DownloadArg(str), Collections.emptyList());
    }

    public DbxDownloader<FileMetadata> download(String str, String str2) throws DbxException {
        if (str2 != null) {
            if (str2.length() < 9) {
                throw new IllegalArgumentException("String 'rev' is shorter than 9");
            }
            if (!Pattern.matches("[0-9a-f]+", str2)) {
                throw new IllegalArgumentException("String 'rev' does not match pattern");
            }
        }
        return download(new DownloadArg(str, str2), Collections.emptyList());
    }

    public DownloadBuilder downloadBuilder(String str) {
        return new DownloadBuilder(this, str);
    }

    Metadata getMetadata(GetMetadataArg getMetadataArg) throws DbxException {
        try {
            return (Metadata) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/get_metadata", getMetadataArg, false, GetMetadataArg.Serializer.INSTANCE, Metadata.Serializer.INSTANCE, GetMetadataError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new GetMetadataErrorException("2/files/get_metadata", e2.getRequestId(), e2.getUserMessage(), (GetMetadataError) e2.getErrorValue());
        }
    }

    public Metadata getMetadata(String str) throws DbxException {
        return getMetadata(new GetMetadataArg(str));
    }

    public GetMetadataBuilder getMetadataBuilder(String str) {
        return new GetMetadataBuilder(this, GetMetadataArg.newBuilder(str));
    }

    DbxDownloader<FileMetadata> getPreview(PreviewArg previewArg, List<HttpRequestor.Header> list) throws DbxException {
        try {
            return this.client.downloadStyle(this.client.getHost().getContent(), "2/files/get_preview", previewArg, false, list, PreviewArg.Serializer.INSTANCE, FileMetadata.Serializer.INSTANCE, PreviewError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new PreviewErrorException("2/files/get_preview", e2.getRequestId(), e2.getUserMessage(), (PreviewError) e2.getErrorValue());
        }
    }

    public DbxDownloader<FileMetadata> getPreview(String str) throws DbxException {
        return getPreview(new PreviewArg(str), Collections.emptyList());
    }

    public DbxDownloader<FileMetadata> getPreview(String str, String str2) throws DbxException {
        if (str2 != null) {
            if (str2.length() < 9) {
                throw new IllegalArgumentException("String 'rev' is shorter than 9");
            }
            if (!Pattern.matches("[0-9a-f]+", str2)) {
                throw new IllegalArgumentException("String 'rev' does not match pattern");
            }
        }
        return getPreview(new PreviewArg(str, str2), Collections.emptyList());
    }

    public GetPreviewBuilder getPreviewBuilder(String str) {
        return new GetPreviewBuilder(this, str);
    }

    GetTemporaryLinkResult getTemporaryLink(GetTemporaryLinkArg getTemporaryLinkArg) throws DbxException {
        try {
            return (GetTemporaryLinkResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/get_temporary_link", getTemporaryLinkArg, false, GetTemporaryLinkArg.Serializer.INSTANCE, GetTemporaryLinkResult.Serializer.INSTANCE, GetTemporaryLinkError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new GetTemporaryLinkErrorException("2/files/get_temporary_link", e2.getRequestId(), e2.getUserMessage(), (GetTemporaryLinkError) e2.getErrorValue());
        }
    }

    public GetTemporaryLinkResult getTemporaryLink(String str) throws DbxException {
        return getTemporaryLink(new GetTemporaryLinkArg(str));
    }

    DbxDownloader<FileMetadata> getThumbnail(ThumbnailArg thumbnailArg, List<HttpRequestor.Header> list) throws DbxException {
        try {
            return this.client.downloadStyle(this.client.getHost().getContent(), "2/files/get_thumbnail", thumbnailArg, false, list, ThumbnailArg.Serializer.INSTANCE, FileMetadata.Serializer.INSTANCE, ThumbnailError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new ThumbnailErrorException("2/files/get_thumbnail", e2.getRequestId(), e2.getUserMessage(), (ThumbnailError) e2.getErrorValue());
        }
    }

    public DbxDownloader<FileMetadata> getThumbnail(String str) throws DbxException {
        return getThumbnail(new ThumbnailArg(str), Collections.emptyList());
    }

    public GetThumbnailBuilder getThumbnailBuilder(String str) {
        return new GetThumbnailBuilder(this, ThumbnailArg.newBuilder(str));
    }

    GetThumbnailBatchResult getThumbnailBatch(GetThumbnailBatchArg getThumbnailBatchArg) throws DbxException {
        try {
            return (GetThumbnailBatchResult) this.client.rpcStyle(this.client.getHost().getContent(), "2/files/get_thumbnail_batch", getThumbnailBatchArg, false, GetThumbnailBatchArg.Serializer.INSTANCE, GetThumbnailBatchResult.Serializer.INSTANCE, GetThumbnailBatchError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new GetThumbnailBatchErrorException("2/files/get_thumbnail_batch", e2.getRequestId(), e2.getUserMessage(), (GetThumbnailBatchError) e2.getErrorValue());
        }
    }

    public GetThumbnailBatchResult getThumbnailBatch(List<ThumbnailArg> list) throws DbxException {
        return getThumbnailBatch(new GetThumbnailBatchArg(list));
    }

    ListFolderResult listFolder(ListFolderArg listFolderArg) throws DbxException {
        try {
            return (ListFolderResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/list_folder", listFolderArg, false, ListFolderArg.Serializer.INSTANCE, ListFolderResult.Serializer.INSTANCE, ListFolderError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new ListFolderErrorException("2/files/list_folder", e2.getRequestId(), e2.getUserMessage(), (ListFolderError) e2.getErrorValue());
        }
    }

    public ListFolderResult listFolder(String str) throws DbxException {
        return listFolder(new ListFolderArg(str));
    }

    public ListFolderBuilder listFolderBuilder(String str) {
        return new ListFolderBuilder(this, ListFolderArg.newBuilder(str));
    }

    ListFolderResult listFolderContinue(ListFolderContinueArg listFolderContinueArg) throws DbxException {
        try {
            return (ListFolderResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/list_folder/continue", listFolderContinueArg, false, ListFolderContinueArg.Serializer.INSTANCE, ListFolderResult.Serializer.INSTANCE, ListFolderContinueError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new ListFolderContinueErrorException("2/files/list_folder/continue", e2.getRequestId(), e2.getUserMessage(), (ListFolderContinueError) e2.getErrorValue());
        }
    }

    public ListFolderResult listFolderContinue(String str) throws DbxException {
        return listFolderContinue(new ListFolderContinueArg(str));
    }

    ListFolderGetLatestCursorResult listFolderGetLatestCursor(ListFolderArg listFolderArg) throws DbxException {
        try {
            return (ListFolderGetLatestCursorResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/list_folder/get_latest_cursor", listFolderArg, false, ListFolderArg.Serializer.INSTANCE, ListFolderGetLatestCursorResult.Serializer.INSTANCE, ListFolderError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new ListFolderErrorException("2/files/list_folder/get_latest_cursor", e2.getRequestId(), e2.getUserMessage(), (ListFolderError) e2.getErrorValue());
        }
    }

    public ListFolderGetLatestCursorResult listFolderGetLatestCursor(String str) throws DbxException {
        return listFolderGetLatestCursor(new ListFolderArg(str));
    }

    public ListFolderGetLatestCursorBuilder listFolderGetLatestCursorBuilder(String str) {
        return new ListFolderGetLatestCursorBuilder(this, ListFolderArg.newBuilder(str));
    }

    ListFolderLongpollResult listFolderLongpoll(ListFolderLongpollArg listFolderLongpollArg) throws DbxException {
        try {
            return (ListFolderLongpollResult) this.client.rpcStyle(this.client.getHost().getNotify(), "2/files/list_folder/longpoll", listFolderLongpollArg, true, ListFolderLongpollArg.Serializer.INSTANCE, ListFolderLongpollResult.Serializer.INSTANCE, ListFolderLongpollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new ListFolderLongpollErrorException("2/files/list_folder/longpoll", e2.getRequestId(), e2.getUserMessage(), (ListFolderLongpollError) e2.getErrorValue());
        }
    }

    public ListFolderLongpollResult listFolderLongpoll(String str) throws DbxException {
        return listFolderLongpoll(new ListFolderLongpollArg(str));
    }

    public ListFolderLongpollResult listFolderLongpoll(String str, long j) throws DbxException {
        if (j < 30) {
            throw new IllegalArgumentException("Number 'timeout' is smaller than 30L");
        }
        if (j > 480) {
            throw new IllegalArgumentException("Number 'timeout' is larger than 480L");
        }
        return listFolderLongpoll(new ListFolderLongpollArg(str, j));
    }

    ListRevisionsResult listRevisions(ListRevisionsArg listRevisionsArg) throws DbxException {
        try {
            return (ListRevisionsResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/list_revisions", listRevisionsArg, false, ListRevisionsArg.Serializer.INSTANCE, ListRevisionsResult.Serializer.INSTANCE, ListRevisionsError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new ListRevisionsErrorException("2/files/list_revisions", e2.getRequestId(), e2.getUserMessage(), (ListRevisionsError) e2.getErrorValue());
        }
    }

    public ListRevisionsResult listRevisions(String str) throws DbxException {
        return listRevisions(new ListRevisionsArg(str));
    }

    public ListRevisionsBuilder listRevisionsBuilder(String str) {
        return new ListRevisionsBuilder(this, ListRevisionsArg.newBuilder(str));
    }

    Metadata move(RelocationArg relocationArg) throws DbxException {
        try {
            return (Metadata) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/move", relocationArg, false, RelocationArg.Serializer.INSTANCE, Metadata.Serializer.INSTANCE, RelocationError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new RelocationErrorException("2/files/move", e2.getRequestId(), e2.getUserMessage(), (RelocationError) e2.getErrorValue());
        }
    }

    @Deprecated
    public Metadata move(String str, String str2) throws DbxException {
        return move(new RelocationArg(str, str2));
    }

    @Deprecated
    public MoveBuilder moveBuilder(String str, String str2) {
        return new MoveBuilder(this, RelocationArg.newBuilder(str, str2));
    }

    RelocationBatchLaunch moveBatch(RelocationBatchArg relocationBatchArg) throws DbxException {
        try {
            return (RelocationBatchLaunch) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/move_batch", relocationBatchArg, false, RelocationBatchArg.Serializer.INSTANCE, RelocationBatchLaunch.Serializer.INSTANCE, StoneSerializers.void_());
        } catch (DbxWrappedException e2) {
            throw new DbxApiException(e2.getRequestId(), e2.getUserMessage(), "Unexpected error response for \"move_batch\":" + e2.getErrorValue());
        }
    }

    public RelocationBatchLaunch moveBatch(List<RelocationPath> list) throws DbxException {
        return moveBatch(new RelocationBatchArg(list));
    }

    public MoveBatchBuilder moveBatchBuilder(List<RelocationPath> list) {
        return new MoveBatchBuilder(this, RelocationBatchArg.newBuilder(list));
    }

    RelocationBatchJobStatus moveBatchCheck(PollArg pollArg) throws DbxException {
        try {
            return (RelocationBatchJobStatus) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/move_batch/check", pollArg, false, PollArg.Serializer.INSTANCE, RelocationBatchJobStatus.Serializer.INSTANCE, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new PollErrorException("2/files/move_batch/check", e2.getRequestId(), e2.getUserMessage(), (PollError) e2.getErrorValue());
        }
    }

    public RelocationBatchJobStatus moveBatchCheck(String str) throws DbxException {
        return moveBatchCheck(new PollArg(str));
    }

    RelocationResult moveV2(RelocationArg relocationArg) throws DbxException {
        try {
            return (RelocationResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/move_v2", relocationArg, false, RelocationArg.Serializer.INSTANCE, RelocationResult.Serializer.INSTANCE, RelocationError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new RelocationErrorException("2/files/move_v2", e2.getRequestId(), e2.getUserMessage(), (RelocationError) e2.getErrorValue());
        }
    }

    public RelocationResult moveV2(String str, String str2) throws DbxException {
        return moveV2(new RelocationArg(str, str2));
    }

    public MoveV2Builder moveV2Builder(String str, String str2) {
        return new MoveV2Builder(this, RelocationArg.newBuilder(str, str2));
    }

    void permanentlyDelete(DeleteArg deleteArg) throws DbxException {
        try {
            this.client.rpcStyle(this.client.getHost().getApi(), "2/files/permanently_delete", deleteArg, false, DeleteArg.Serializer.INSTANCE, StoneSerializers.void_(), DeleteError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new DeleteErrorException("2/files/permanently_delete", e2.getRequestId(), e2.getUserMessage(), (DeleteError) e2.getErrorValue());
        }
    }

    public void permanentlyDelete(String str) throws DbxException {
        permanentlyDelete(new DeleteArg(str));
    }

    void propertiesAdd(AddPropertiesArg addPropertiesArg) throws DbxException {
        try {
            this.client.rpcStyle(this.client.getHost().getApi(), "2/files/properties/add", addPropertiesArg, false, AddPropertiesArg.Serializer.INSTANCE, StoneSerializers.void_(), AddPropertiesError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new AddPropertiesErrorException("2/files/properties/add", e2.getRequestId(), e2.getUserMessage(), (AddPropertiesError) e2.getErrorValue());
        }
    }

    @Deprecated
    public void propertiesAdd(String str, List<PropertyGroup> list) throws DbxException {
        propertiesAdd(new AddPropertiesArg(str, list));
    }

    void propertiesOverwrite(OverwritePropertyGroupArg overwritePropertyGroupArg) throws DbxException {
        try {
            this.client.rpcStyle(this.client.getHost().getApi(), "2/files/properties/overwrite", overwritePropertyGroupArg, false, OverwritePropertyGroupArg.Serializer.INSTANCE, StoneSerializers.void_(), InvalidPropertyGroupError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new InvalidPropertyGroupErrorException("2/files/properties/overwrite", e2.getRequestId(), e2.getUserMessage(), (InvalidPropertyGroupError) e2.getErrorValue());
        }
    }

    @Deprecated
    public void propertiesOverwrite(String str, List<PropertyGroup> list) throws DbxException {
        propertiesOverwrite(new OverwritePropertyGroupArg(str, list));
    }

    void propertiesRemove(RemovePropertiesArg removePropertiesArg) throws DbxException {
        try {
            this.client.rpcStyle(this.client.getHost().getApi(), "2/files/properties/remove", removePropertiesArg, false, RemovePropertiesArg.Serializer.INSTANCE, StoneSerializers.void_(), RemovePropertiesError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new RemovePropertiesErrorException("2/files/properties/remove", e2.getRequestId(), e2.getUserMessage(), (RemovePropertiesError) e2.getErrorValue());
        }
    }

    @Deprecated
    public void propertiesRemove(String str, List<String> list) throws DbxException {
        propertiesRemove(new RemovePropertiesArg(str, list));
    }

    GetTemplateResult propertiesTemplateGet(GetTemplateArg getTemplateArg) throws DbxException {
        try {
            return (GetTemplateResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/properties/template/get", getTemplateArg, false, GetTemplateArg.Serializer.INSTANCE, GetTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new TemplateErrorException("2/files/properties/template/get", e2.getRequestId(), e2.getUserMessage(), (TemplateError) e2.getErrorValue());
        }
    }

    @Deprecated
    public GetTemplateResult propertiesTemplateGet(String str) throws DbxException {
        return propertiesTemplateGet(new GetTemplateArg(str));
    }

    @Deprecated
    public ListTemplateResult propertiesTemplateList() throws DbxException {
        try {
            return (ListTemplateResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/properties/template/list", null, false, StoneSerializers.void_(), ListTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new TemplateErrorException("2/files/properties/template/list", e2.getRequestId(), e2.getUserMessage(), (TemplateError) e2.getErrorValue());
        }
    }

    void propertiesUpdate(UpdatePropertiesArg updatePropertiesArg) throws DbxException {
        try {
            this.client.rpcStyle(this.client.getHost().getApi(), "2/files/properties/update", updatePropertiesArg, false, UpdatePropertiesArg.Serializer.INSTANCE, StoneSerializers.void_(), UpdatePropertiesError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new UpdatePropertiesErrorException("2/files/properties/update", e2.getRequestId(), e2.getUserMessage(), (UpdatePropertiesError) e2.getErrorValue());
        }
    }

    @Deprecated
    public void propertiesUpdate(String str, List<PropertyGroupUpdate> list) throws DbxException {
        propertiesUpdate(new UpdatePropertiesArg(str, list));
    }

    FileMetadata restore(RestoreArg restoreArg) throws DbxException {
        try {
            return (FileMetadata) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/restore", restoreArg, false, RestoreArg.Serializer.INSTANCE, FileMetadata.Serializer.INSTANCE, RestoreError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new RestoreErrorException("2/files/restore", e2.getRequestId(), e2.getUserMessage(), (RestoreError) e2.getErrorValue());
        }
    }

    public FileMetadata restore(String str, String str2) throws DbxException {
        return restore(new RestoreArg(str, str2));
    }

    SaveUrlResult saveUrl(SaveUrlArg saveUrlArg) throws DbxException {
        try {
            return (SaveUrlResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/save_url", saveUrlArg, false, SaveUrlArg.Serializer.INSTANCE, SaveUrlResult.Serializer.INSTANCE, SaveUrlError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new SaveUrlErrorException("2/files/save_url", e2.getRequestId(), e2.getUserMessage(), (SaveUrlError) e2.getErrorValue());
        }
    }

    public SaveUrlResult saveUrl(String str, String str2) throws DbxException {
        return saveUrl(new SaveUrlArg(str, str2));
    }

    SaveUrlJobStatus saveUrlCheckJobStatus(PollArg pollArg) throws DbxException {
        try {
            return (SaveUrlJobStatus) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/save_url/check_job_status", pollArg, false, PollArg.Serializer.INSTANCE, SaveUrlJobStatus.Serializer.INSTANCE, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new PollErrorException("2/files/save_url/check_job_status", e2.getRequestId(), e2.getUserMessage(), (PollError) e2.getErrorValue());
        }
    }

    public SaveUrlJobStatus saveUrlCheckJobStatus(String str) throws DbxException {
        return saveUrlCheckJobStatus(new PollArg(str));
    }

    SearchResult search(SearchArg searchArg) throws DbxException {
        try {
            return (SearchResult) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/search", searchArg, false, SearchArg.Serializer.INSTANCE, SearchResult.Serializer.INSTANCE, SearchError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new SearchErrorException("2/files/search", e2.getRequestId(), e2.getUserMessage(), (SearchError) e2.getErrorValue());
        }
    }

    public SearchResult search(String str, String str2) throws DbxException {
        return search(new SearchArg(str, str2));
    }

    public SearchBuilder searchBuilder(String str, String str2) {
        return new SearchBuilder(this, SearchArg.newBuilder(str, str2));
    }

    UploadUploader upload(CommitInfo commitInfo) throws DbxException {
        return new UploadUploader(this.client.uploadStyle(this.client.getHost().getContent(), "2/files/upload", commitInfo, false, CommitInfo.Serializer.INSTANCE), this.client.getUserId());
    }

    public UploadUploader upload(String str) throws DbxException {
        return upload(new CommitInfo(str));
    }

    public UploadBuilder uploadBuilder(String str) {
        return new UploadBuilder(this, CommitInfo.newBuilder(str));
    }

    UploadSessionAppendUploader uploadSessionAppend(UploadSessionCursor uploadSessionCursor) throws DbxException {
        return new UploadSessionAppendUploader(this.client.uploadStyle(this.client.getHost().getContent(), "2/files/upload_session/append", uploadSessionCursor, false, UploadSessionCursor.Serializer.INSTANCE), this.client.getUserId());
    }

    @Deprecated
    public UploadSessionAppendUploader uploadSessionAppend(String str, long j) throws DbxException {
        return uploadSessionAppend(new UploadSessionCursor(str, j));
    }

    UploadSessionAppendV2Uploader uploadSessionAppendV2(UploadSessionAppendArg uploadSessionAppendArg) throws DbxException {
        return new UploadSessionAppendV2Uploader(this.client.uploadStyle(this.client.getHost().getContent(), "2/files/upload_session/append_v2", uploadSessionAppendArg, false, UploadSessionAppendArg.Serializer.INSTANCE), this.client.getUserId());
    }

    public UploadSessionAppendV2Uploader uploadSessionAppendV2(UploadSessionCursor uploadSessionCursor) throws DbxException {
        return uploadSessionAppendV2(new UploadSessionAppendArg(uploadSessionCursor));
    }

    public UploadSessionAppendV2Uploader uploadSessionAppendV2(UploadSessionCursor uploadSessionCursor, boolean z) throws DbxException {
        return uploadSessionAppendV2(new UploadSessionAppendArg(uploadSessionCursor, z));
    }

    UploadSessionFinishUploader uploadSessionFinish(UploadSessionFinishArg uploadSessionFinishArg) throws DbxException {
        return new UploadSessionFinishUploader(this.client.uploadStyle(this.client.getHost().getContent(), "2/files/upload_session/finish", uploadSessionFinishArg, false, UploadSessionFinishArg.Serializer.INSTANCE), this.client.getUserId());
    }

    public UploadSessionFinishUploader uploadSessionFinish(UploadSessionCursor uploadSessionCursor, CommitInfo commitInfo) throws DbxException {
        return uploadSessionFinish(new UploadSessionFinishArg(uploadSessionCursor, commitInfo));
    }

    UploadSessionFinishBatchLaunch uploadSessionFinishBatch(UploadSessionFinishBatchArg uploadSessionFinishBatchArg) throws DbxException {
        try {
            return (UploadSessionFinishBatchLaunch) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/upload_session/finish_batch", uploadSessionFinishBatchArg, false, UploadSessionFinishBatchArg.Serializer.INSTANCE, UploadSessionFinishBatchLaunch.Serializer.INSTANCE, StoneSerializers.void_());
        } catch (DbxWrappedException e2) {
            throw new DbxApiException(e2.getRequestId(), e2.getUserMessage(), "Unexpected error response for \"upload_session/finish_batch\":" + e2.getErrorValue());
        }
    }

    public UploadSessionFinishBatchLaunch uploadSessionFinishBatch(List<UploadSessionFinishArg> list) throws DbxException {
        return uploadSessionFinishBatch(new UploadSessionFinishBatchArg(list));
    }

    UploadSessionFinishBatchJobStatus uploadSessionFinishBatchCheck(PollArg pollArg) throws DbxException {
        try {
            return (UploadSessionFinishBatchJobStatus) this.client.rpcStyle(this.client.getHost().getApi(), "2/files/upload_session/finish_batch/check", pollArg, false, PollArg.Serializer.INSTANCE, UploadSessionFinishBatchJobStatus.Serializer.INSTANCE, PollError.Serializer.INSTANCE);
        } catch (DbxWrappedException e2) {
            throw new PollErrorException("2/files/upload_session/finish_batch/check", e2.getRequestId(), e2.getUserMessage(), (PollError) e2.getErrorValue());
        }
    }

    public UploadSessionFinishBatchJobStatus uploadSessionFinishBatchCheck(String str) throws DbxException {
        return uploadSessionFinishBatchCheck(new PollArg(str));
    }

    UploadSessionStartUploader uploadSessionStart(UploadSessionStartArg uploadSessionStartArg) throws DbxException {
        return new UploadSessionStartUploader(this.client.uploadStyle(this.client.getHost().getContent(), "2/files/upload_session/start", uploadSessionStartArg, false, UploadSessionStartArg.Serializer.INSTANCE), this.client.getUserId());
    }

    public UploadSessionStartUploader uploadSessionStart() throws DbxException {
        return uploadSessionStart(new UploadSessionStartArg());
    }

    public UploadSessionStartUploader uploadSessionStart(boolean z) throws DbxException {
        return uploadSessionStart(new UploadSessionStartArg(z));
    }
}
