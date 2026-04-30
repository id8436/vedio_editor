.class Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1$2;
.super Ljava/lang/Object;
.source "AdobeAuthSessionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1;

.field final synthetic val$authError:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1$2;->this$1:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1$2;->val$authError:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1$2;->this$1:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_statusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;->AdobeAuthLoginAttemptFailed:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1$2;->val$authError:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    invoke-interface {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;->call(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 207
    return-void
.end method
