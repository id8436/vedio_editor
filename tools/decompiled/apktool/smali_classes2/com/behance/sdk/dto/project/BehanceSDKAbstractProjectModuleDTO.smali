.class public abstract Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;
.super Ljava/lang/Object;
.source "BehanceSDKAbstractProjectModuleDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4e9fffae3f49d2a2L


# instance fields
.field private alignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

.field private id:Ljava/lang/String;

.field private type:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;->type:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    return-object v0
.end method

.method public setAlignment(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    invoke-static {p1}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->fromString(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;->alignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    .line 60
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;->id:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setType(Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;->type:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    .line 56
    return-void
.end method
