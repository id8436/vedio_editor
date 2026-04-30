.class Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3$1;
.super Ljava/lang/Object;
.source "TwitterSettingsActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3$1;->this$1:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lcom/twitter/sdk/android/core/af;->a()Lcom/twitter/sdk/android/core/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/af;->f()Lcom/twitter/sdk/android/core/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/u;->c()V

    .line 183
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3$1;->this$1:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3;->this$0:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->access$100(Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;)V

    .line 184
    return-void
.end method
