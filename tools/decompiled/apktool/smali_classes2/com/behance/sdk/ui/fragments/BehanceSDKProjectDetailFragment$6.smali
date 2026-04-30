.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$6;
.super Lcom/i/a/b/f/c;
.source "BehanceSDKProjectDetailFragment.java"


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

.field final synthetic val$featureIconImgView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$6;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    iput-object p2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$6;->val$featureIconImgView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/i/a/b/f/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$6;->val$featureIconImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 898
    return-void
.end method
