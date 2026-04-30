.class Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$1;
.super Ljava/lang/Object;
.source "AdobeLibraryComposite.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1678
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$1;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$1;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$1;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 1682
    return-void
.end method
