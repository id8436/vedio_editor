.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryElementInternal;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
.source "AdobeLibraryElementInternal.java"


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    return-object v0
.end method
