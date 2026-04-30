.class Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment$2;
.super Lcom/b/a/h/b/g;
.source "BehanceSDKImageDisplayPageItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/h/b/g",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;

    invoke-direct {p0}, Lcom/b/a/h/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/b/a/h/a/d;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;)V

    .line 100
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;

    invoke-static {v0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;->access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment;Landroid/graphics/Bitmap;)V

    .line 101
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/b/a/h/a/d;)V
    .locals 0

    .prologue
    .line 96
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayPageItemFragment$2;->onResourceReady(Landroid/graphics/Bitmap;Lcom/b/a/h/a/d;)V

    return-void
.end method
