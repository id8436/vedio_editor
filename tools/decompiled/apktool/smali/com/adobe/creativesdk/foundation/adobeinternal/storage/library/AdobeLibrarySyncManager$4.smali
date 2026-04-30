.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$4;
.super Ljava/lang/Object;
.source "AdobeLibrarySyncManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

.field final synthetic val$callSessionId:I

.field final synthetic val$elementId:Ljava/lang/String;

.field final synthetic val$elementIsNew:Z

.field final synthetic val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field final synthetic val$value:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;ILjava/lang/String;Ljava/lang/Integer;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Z)V
    .locals 0

    .prologue
    .line 667
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iput p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$4;->val$callSessionId:I

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$4;->val$elementId:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$4;->val$value:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$4;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iput-boolean p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$4;->val$elementIsNew:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V
    .locals 7

    .prologue
    .line 670
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$4;->val$callSessionId:I

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorNoRenditionCandidate:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    if-eq v0, v1, :cond_0

    .line 676
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$4;->val$elementId:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$4;->val$value:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$4;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-boolean v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$4;->val$elementIsNew:Z

    iget v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$4;->val$callSessionId:I

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->getRenditionSizeCompletedForElement(Ljava/lang/String;Ljava/lang/Integer;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;ZI)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 667
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$4;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    return-void
.end method
