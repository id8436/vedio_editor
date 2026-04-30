.class public Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;
.super Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;
.source "BehanceSDKEditProjectModuleEmbedTransformed.java"


# instance fields
.field private originalHeight:I

.field private originalWidth:I

.field private widthUnit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;-><init>()V

    return-void
.end method


# virtual methods
.method public getOriginalHeight()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->originalHeight:I

    return v0
.end method

.method public getOriginalWidth()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->originalWidth:I

    return v0
.end method

.method public getWidthUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->widthUnit:Ljava/lang/String;

    return-object v0
.end method

.method public setOriginalHeight(I)V
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->originalHeight:I

    .line 26
    return-void
.end method

.method public setOriginalWidth(I)V
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->originalWidth:I

    .line 18
    return-void
.end method

.method public setWidthUnit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->widthUnit:Ljava/lang/String;

    .line 34
    return-void
.end method
