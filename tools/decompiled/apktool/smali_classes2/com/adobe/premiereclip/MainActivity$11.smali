.class Lcom/adobe/premiereclip/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 1639
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$11;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$11;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$1500(Lcom/adobe/premiereclip/MainActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "FragmentTag0"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1643
    if-eqz v0, :cond_0

    .line 1644
    check-cast v0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-virtual {v0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->onLogoutAccepted()V

    .line 1646
    :cond_0
    return-void
.end method
