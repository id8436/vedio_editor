.class Lcom/adobe/creativeapps/settings/activity/ProfileFragment$7;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionQuotaCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

.field final synthetic val$callGallery:Z


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;Z)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$7;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    iput-boolean p2, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$7;->val$callGallery:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 255
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 256
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 257
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$7;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-static {v1}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$700(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Lcom/sage42/android/view/ui/CircularProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sage42/android/view/ui/CircularProgressBar;->setProgress(I)V

    .line 258
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$7;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$700(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Lcom/sage42/android/view/ui/CircularProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sage42/android/view/ui/CircularProgressBar;->setShowText(Z)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    const-string/jumbo v3, "GB"

    .line 263
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 265
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/high16 v1, 0x44800000    # 1024.0f

    mul-float/2addr v1, v0

    .line 266
    const-string/jumbo v0, "MB"

    .line 273
    :goto_0
    const-string/jumbo v4, "%.01f"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 274
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v6

    .line 273
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 275
    iget-object v4, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$7;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-static {v4}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$800(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 276
    iget-object v4, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$7;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-static {v4}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$800(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$7;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$900(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 280
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isPrivateCloud()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 282
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$7;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$1000(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$7;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$1100(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getName()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$7;->val$callGallery:Z

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$7;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$000(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->changeCloud()V

    .line 300
    :cond_2
    return-void

    .line 269
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 270
    const-string/jumbo v0, "GB"

    goto/16 :goto_0

    .line 288
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    .line 289
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$7;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$1200(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$7;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    sget v2, Lcom/adobe/creativeapps/settings/R$string;->IDS_SETTINGS_CREATIVE_CLOUD_SUBSCRIBER:I

    .line 290
    invoke-static {v1, v2}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$400(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 292
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$7;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$1200(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$7;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    sget v2, Lcom/adobe/creativeapps/settings/R$string;->IDS_SETTINGS_CREATIVE_CLOUD_FREE:I

    .line 293
    invoke-static {v1, v2}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$400(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 2

    .prologue
    .line 304
    const-string/jumbo v0, "ProfileActivity"

    const-string/jumbo v1, "Error in fetching storage info"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 252
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$7;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
