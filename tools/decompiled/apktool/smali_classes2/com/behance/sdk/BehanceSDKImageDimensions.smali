.class public Lcom/behance/sdk/BehanceSDKImageDimensions;
.super Ljava/lang/Object;
.source "BehanceSDKImageDimensions.java"


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(II)Lcom/behance/sdk/BehanceSDKImageDimensions;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/behance/sdk/BehanceSDKImageDimensions;

    invoke-direct {v0}, Lcom/behance/sdk/BehanceSDKImageDimensions;-><init>()V

    .line 33
    invoke-virtual {v0, p0}, Lcom/behance/sdk/BehanceSDKImageDimensions;->setWidth(I)V

    .line 34
    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKImageDimensions;->setHeight(I)V

    .line 35
    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/behance/sdk/BehanceSDKImageDimensions;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/behance/sdk/BehanceSDKImageDimensions;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/behance/sdk/BehanceSDKImageDimensions;->height:I

    .line 52
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/behance/sdk/BehanceSDKImageDimensions;->width:I

    .line 44
    return-void
.end method
