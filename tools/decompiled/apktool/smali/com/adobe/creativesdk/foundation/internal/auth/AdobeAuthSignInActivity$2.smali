.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$2;
.super Ljava/lang/Object;
.source "AdobeAuthSignInActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 682
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->access$102(Z)Z

    .line 683
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_CANCELLED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->access$200(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 684
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->finish()V

    .line 685
    return-void
.end method
