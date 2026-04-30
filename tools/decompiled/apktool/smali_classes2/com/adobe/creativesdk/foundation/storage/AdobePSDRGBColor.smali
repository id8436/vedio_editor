.class public Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;
.super Ljava/lang/Object;
.source "AdobePSDRGBColor.java"


# instance fields
.field private final blue:Ljava/lang/Integer;

.field private final green:Ljava/lang/Integer;

.field private final red:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;->red:Ljava/lang/Integer;

    .line 38
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;->green:Ljava/lang/Integer;

    .line 39
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;->blue:Ljava/lang/Integer;

    .line 40
    return-void
.end method


# virtual methods
.method public getBlue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;->blue:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGreen()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;->green:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRed()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;->red:Ljava/lang/Integer;

    return-object v0
.end method
