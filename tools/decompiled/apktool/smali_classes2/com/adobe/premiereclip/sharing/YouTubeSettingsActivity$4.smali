.class Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$4;
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
    .line 312
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$4;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 315
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$4;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->publicBtn:Landroid/widget/Button;

    const-string/jumbo v1, "#ff6f36a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 316
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$4;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->publicBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 318
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$4;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->privateBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 319
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$4;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->privateBtn:Landroid/widget/Button;

    const-string/jumbo v1, "#ff6f36a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 321
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$4;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->unlistedBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 322
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$4;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->unlistedBtn:Landroid/widget/Button;

    const-string/jumbo v1, "#ff6f36a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 323
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$4;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    const-string/jumbo v1, "public"

    iput-object v1, v0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->videoAccess:Ljava/lang/String;

    .line 325
    const-string/jumbo v0, "SELECT"

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$4;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    iget-object v1, v1, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->videoAccess:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void
.end method
