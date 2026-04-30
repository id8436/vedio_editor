.class public interface abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/IAdobeOneUpViewerEventHandler;
.super Ljava/lang/Object;
.source "IAdobeOneUpViewerEventHandler.java"


# virtual methods
.method public abstract clear(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V
.end method

.method public abstract handleCreationOfActivity(Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewData;Landroid/app/Activity;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
.end method

.method public abstract handleMenuClick(ILcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewData;Landroid/app/Activity;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
.end method

.method public abstract handleNewPage(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewData;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
.end method

.method public abstract handleNewPageForBottomBar(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewData;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
.end method

.method public abstract handleOrientationChangeForCoachMark(I)V
.end method

.method public abstract isAScreenshotFile()Z
.end method

.method public abstract openedInPrivateCloud(Z)V
.end method

.method public abstract showCoachMarks(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ZILcom/adobe/creativesdk/foundation/internal/utils/coachmarks/IAdobeCoachMarksDismissListener;)V
.end method
