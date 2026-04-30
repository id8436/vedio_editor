.class Lcom/adobe/premiereclip/sharing/PublishInfoActivity$2;
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
    .line 119
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$2;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$2;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->publishArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$2;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->unlistedArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$2;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    invoke-static {v0, v2}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->access$102(Lcom/adobe/premiereclip/sharing/PublishInfoActivity;Z)Z

    .line 124
    return-void
.end method
