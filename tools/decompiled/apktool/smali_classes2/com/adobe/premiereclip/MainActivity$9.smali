.class Lcom/adobe/premiereclip/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/adobe/creativeapps/settings/utils/UserProfileHandler$IAdobeGetUserProfileListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$9;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetUserProfileSuccess()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$9;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$1200(Lcom/adobe/premiereclip/MainActivity;)Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->notifyDataSetChanged()V

    .line 704
    return-void
.end method
