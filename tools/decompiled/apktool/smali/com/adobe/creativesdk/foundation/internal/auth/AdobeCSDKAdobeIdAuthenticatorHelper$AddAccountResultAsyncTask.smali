.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;
.super Landroid/os/AsyncTask;
.source "AdobeCSDKAdobeIdAuthenticatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/accounts/AccountManagerFuture",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private accountUser:Ljava/lang/String;

.field private final callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;",
            ">;"
        }
    .end annotation
.end field

.field private error:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

.field private errorData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private errorMsg:Ljava/lang/String;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 190
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;->errorMsg:Ljava/lang/String;

    .line 191
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;->accountUser:Ljava/lang/String;

    .line 194
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;->callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;

    .line 195
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/accounts/AccountManagerFuture;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 201
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 202
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    const-string/jumbo v2, "authAccount"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "authAccount"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;->accountUser:Ljava/lang/String;

    :cond_1
    move-object v0, v1

    .line 215
    :goto_1
    return-object v0

    .line 204
    :cond_2
    const-string/jumbo v0, ""
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 206
    invoke-virtual {v1}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;->errorMsg:Ljava/lang/String;

    .line 207
    invoke-virtual {v1}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_1

    .line 208
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 209
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;->errorMsg:Ljava/lang/String;

    .line 210
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 211
    :catch_2
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 212
    invoke-virtual {v1}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;->errorMsg:Ljava/lang/String;

    .line 213
    invoke-virtual {v1}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 185
    check-cast p1, [Landroid/accounts/AccountManagerFuture;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;->doInBackground([Landroid/accounts/AccountManagerFuture;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;->callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;->accountUser:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;->onSuccess(Ljava/lang/Object;)V

    .line 229
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;->errorData:Ljava/util/HashMap;

    const-string/jumbo v1, "error_description"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_ADD_ACCOUNT_TO_ACCOUNT_MANAGER:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;->errorData:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;->error:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    .line 227
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;->callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;->error:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 185
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
