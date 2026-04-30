.class Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$1;
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
    .line 162
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$1;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$1;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->access$000(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$1;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->pickUserAccount()V

    .line 168
    :cond_0
    return-void
.end method
