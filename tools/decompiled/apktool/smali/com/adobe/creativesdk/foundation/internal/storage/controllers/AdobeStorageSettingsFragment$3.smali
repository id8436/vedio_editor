.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment$3;
.super Ljava/lang/Object;
.source "AdobeStorageSettingsFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionQuotaCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 12

    .prologue
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 181
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 187
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment$3;->val$view:Landroid/view/View;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_storage_settings_storageUsage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 188
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    div-double/2addr v6, v8

    mul-double/2addr v6, v4

    .line 190
    cmpl-double v1, v6, v4

    if-lez v1, :cond_3

    .line 192
    :goto_1
    cmpg-double v1, v4, v2

    if-gez v1, :cond_2

    .line 195
    :goto_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;

    sget v4, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_storage_settings_storage_usage:I

    invoke-virtual {v1, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    const-string/jumbo v4, "%.2f"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 197
    const-string/jumbo v5, "%.2f"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 198
    const-string/jumbo v6, "%.2f%%"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 200
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v10

    aput-object v4, v3, v11

    const/4 v2, 0x2

    aput-object v5, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move-wide v2, v4

    goto :goto_2

    :cond_3
    move-wide v4, v6

    goto :goto_1
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 177
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment$3;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
