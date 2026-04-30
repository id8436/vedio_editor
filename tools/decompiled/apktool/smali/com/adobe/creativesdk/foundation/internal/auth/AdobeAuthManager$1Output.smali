.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;
.super Ljava/lang/Object;
.source "AdobeAuthManager.java"


# instance fields
.field _result:Z

.field finished:Z

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 936
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;->finished:Z

    .line 938
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;->_result:Z

    return-void
.end method
