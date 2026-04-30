.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$3;
.super Ljava/lang/Object;
.source "AdobeLibrarySyncManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Ljava/lang/String;",
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
    .line 658
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iput p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$3;->val$callSessionId:I

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$3;->val$elementId:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$3;->val$value:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$3;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iput-boolean p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$3;->val$elementIsNew:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 658
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$3;->onCompletion(Ljava/lang/String;)V

    return-void
.end method

.method public onCompletion(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 661
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$3;->val$callSessionId:I

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 666
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$3;->val$elementId:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$3;->val$value:Ljava/lang/Integer;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$3;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-boolean v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$3;->val$elementIsNew:Z

    iget v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$3;->val$callSessionId:I

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->getRenditionSizeCompletedForElement(Ljava/lang/String;Ljava/lang/Integer;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;ZI)V

    goto :goto_0
.end method
