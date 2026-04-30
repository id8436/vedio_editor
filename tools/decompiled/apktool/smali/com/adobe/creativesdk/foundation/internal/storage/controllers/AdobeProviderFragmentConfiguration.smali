.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeProviderFragmentConfiguration;
.super Ljava/lang/Object;
.source "AdobeProviderFragmentConfiguration.java"


# static fields
.field public static final ADOBE_FILES_PROVIDER_KEY:Ljava/lang/String; = "ADOBE_FILES_PROVIDER_KEY"

.field public static final ADOBE_PROVIDE_MULTIPLE_FILES:Ljava/lang/String; = "ADOBE_MULTIPLE_FILES_PROVIDER_KEY"


# instance fields
.field private shouldEnableMultiSelect:Z

.field private shouldProvideFiles:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeProviderFragmentConfiguration;->shouldProvideFiles:Z

    .line 13
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeProviderFragmentConfiguration;->shouldEnableMultiSelect:Z

    .line 17
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeProviderFragmentConfiguration;->shouldProvideFiles:Z

    .line 18
    iput-boolean p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeProviderFragmentConfiguration;->shouldEnableMultiSelect:Z

    .line 20
    return-void
.end method


# virtual methods
.method public isShouldEnableMultiSelect()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeProviderFragmentConfiguration;->shouldProvideFiles:Z

    return v0
.end method

.method public shouldProvideFiles()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeProviderFragmentConfiguration;->shouldProvideFiles:Z

    return v0
.end method
