.class Lcom/adobe/premiereclip/sharing/PublishInfoActivity$4;
.super Ljava/lang/Object;
.source "PublishInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/PublishInfoActivity;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$4;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$4;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->publishArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$4;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->unlistedArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$4;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->access$102(Lcom/adobe/premiereclip/sharing/PublishInfoActivity;Z)Z

    .line 145
    return-void
.end method
