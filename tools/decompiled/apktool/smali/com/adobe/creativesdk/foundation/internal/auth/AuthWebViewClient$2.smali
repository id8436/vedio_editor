.class Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$2;
.super Ljava/lang/Object;
.source "AdobeAuthSignInActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;

.field final synthetic val$handler:Landroid/webkit/HttpAuthHandler;

.field final synthetic val$passwd:Landroid/widget/EditText;

.field final synthetic val$user:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;Landroid/webkit/HttpAuthHandler;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$2;->val$user:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$2;->val$passwd:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->signInView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->_proxyCredsEntered:Z

    .line 138
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$2;->val$user:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$2;->val$passwd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method
