.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment$2;
.super Ljava/lang/Object;
.source "AdobeStorageSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;

    const-string/jumbo v1, "https://accounts.adobe.com"

    invoke-static {v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;Landroid/view/View;Ljava/lang/String;)V

    .line 74
    return-void
.end method
