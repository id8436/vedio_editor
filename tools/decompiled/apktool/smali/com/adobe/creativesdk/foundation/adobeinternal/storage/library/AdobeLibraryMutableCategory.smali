.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableCategory;
.super Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;
.source "AdobeLibraryMutableCategory.java"


# instance fields
.field mMutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    .line 29
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableCategory;->mMutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    .line 30
    return-void
.end method

.method public static categoryWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableCategory;
    .locals 2

    .prologue
    .line 50
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableCategory;->createManifestNodeWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableCategory;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableCategory;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;)V

    return-object v1
.end method

.method private static createManifestNodeWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;
    .locals 2

    .prologue
    .line 33
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->createNodeWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 36
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setNodeId(Ljava/lang/String;)V

    .line 39
    return-object v0
.end method


# virtual methods
.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableCategory;->mMutableNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setName(Ljava/lang/String;)V

    .line 57
    return-void
.end method
