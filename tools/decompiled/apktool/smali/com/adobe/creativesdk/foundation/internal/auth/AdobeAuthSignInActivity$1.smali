.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$1;
.super Landroid/os/AsyncTask;
.source "AdobeAuthSignInActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$error:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;Landroid/content/Intent;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$1;->val$data:Landroid/content/Intent;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$1;->val$error:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->access$000(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;->doPostLoginWork()Ljava/lang/Boolean;

    move-result-object v0

    .line 606
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 601
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 612
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 613
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->access$000(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;->onSucess()V

    .line 619
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$1;->val$data:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->setResult(ILandroid/content/Intent;)V

    .line 620
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$1;->val$error:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->sendResultBack(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 621
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->finish()V

    .line 622
    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->access$000(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;->onError()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 601
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
