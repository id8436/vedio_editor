.class public Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;
.super Ljava/lang/Object;
.source "BehanceSDKModulePrepareDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private data:Ljava/lang/String;

.field private id:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;->id:I

    .line 18
    iput-object p2, p0, Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;->data:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;->id:I

    return v0
.end method
