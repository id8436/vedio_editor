.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeMobilePackageCollectionConfiguration;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;
.source "AdobeMobilePackageCollectionConfiguration.java"


# static fields
.field public static final TARGET_COLLECTION_HREF_KEY:Ljava/lang/String; = "mobilePackageCollectionHref"

.field public static final TARGET_COLLECTION_MODIFIED_DATE:Ljava/lang/String; = "mobilePackageCollectionModifiedDate"

.field public static final TARGET_COLLECTION_PARENT_HREF_KEY:Ljava/lang/String; = "mobilePackageCollectionParentHref"


# instance fields
.field private modifiedDate:Ljava/lang/String;

.field private targetCollectionHref:Ljava/lang/String;

.field private targetParentCollectionHref:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromBundle(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->createFromBundle(Landroid/os/Bundle;)V

    .line 51
    const-string/jumbo v0, "mobilePackageCollectionHref"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeMobilePackageCollectionConfiguration;->targetCollectionHref:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "mobilePackageCollectionParentHref"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeMobilePackageCollectionConfiguration;->targetParentCollectionHref:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "mobilePackageCollectionModifiedDate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeMobilePackageCollectionConfiguration;->modifiedDate:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public getTargetCollectionHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeMobilePackageCollectionConfiguration;->targetCollectionHref:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetModifedDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeMobilePackageCollectionConfiguration;->modifiedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetParentCollectionHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeMobilePackageCollectionConfiguration;->targetParentCollectionHref:Ljava/lang/String;

    return-object v0
.end method
