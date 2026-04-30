.class Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$3;
.super Ljava/lang/Object;
.source "YouTubeSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$3;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 208
    const/16 v0, 0x47

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$3;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getPermission(ILjava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$3;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->access$200(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;)V

    .line 212
    :cond_0
    return-void
.end method
