.class Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$1;
.super Ljava/lang/Object;
.source "AdobeAuthSignInActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;

.field final synthetic val$handler:Landroid/webkit/HttpAuthHandler;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;Landroid/app/AlertDialog;Landroid/webkit/HttpAuthHandler;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$1;->val$alertDialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$1;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->signInView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->_proxyCredsEntered:Z

    .line 129
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 130
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 131
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$1;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 132
    return-void
.end method
