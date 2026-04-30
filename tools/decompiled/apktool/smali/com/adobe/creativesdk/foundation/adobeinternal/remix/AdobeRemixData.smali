.class public Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;
.super Ljava/lang/Object;
.source "AdobeRemixData.java"


# static fields
.field public static final AdobeRemixLicenseAttribution:Ljava/lang/String; = "by"

.field public static final AdobeRemixLicenseNoDerivatives:Ljava/lang/String; = "by-nd"

.field public static final AdobeRemixLicenseNonCommercial:Ljava/lang/String; = "by-nc"

.field public static final AdobeRemixLicenseNonCommercialNoDerivatives:Ljava/lang/String; = "by-nc-nd"

.field public static final AdobeRemixLicenseNonCommercialShareAlike:Ljava/lang/String; = "by-nc-sa"

.field public static final AdobeRemixLicenseShareAlike:Ljava/lang/String; = "by-sa"


# instance fields
.field public attributionName:Ljava/lang/String;

.field public attributionURL:Ljava/lang/String;

.field public licenseType:Ljava/lang/String;

.field public manageUIURL:Ljava/lang/String;

.field public originURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;->originURL:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;->manageUIURL:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;->licenseType:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;->attributionName:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;->attributionURL:Ljava/lang/String;

    .line 26
    return-void
.end method
