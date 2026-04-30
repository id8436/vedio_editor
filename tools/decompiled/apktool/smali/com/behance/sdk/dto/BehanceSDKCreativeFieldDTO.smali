.class public Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;
.super Ljava/lang/Object;
.source "BehanceSDKCreativeFieldDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL_CREATIVE_FIELDS_ID:Ljava/lang/String; = "ALL_CREATIVE_FIELDS_ID"

.field public static final ALL_CREATIVE_FIELDS_NAME:Ljava/lang/String; = "All Creative Fields"

.field private static final serialVersionUID:J = 0x4a01851c8e44b41cL


# instance fields
.field private category:Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->id:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;->NONE:Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;

    iput-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->category:Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 72
    :cond_1
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 76
    check-cast p1, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    .line 77
    iget-object v2, p0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->id:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 78
    iget-object v2, p0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    :cond_2
    iget-object v2, p0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->name:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 85
    iget-object v2, p0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    :cond_3
    iget-object v2, p0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->category:Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;

    iget-object v3, p1, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->category:Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;

    if-ne v2, v3, :cond_6

    :goto_1
    move v1, v0

    goto :goto_0

    .line 81
    :cond_4
    iget-object v2, p1, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->id:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 88
    :cond_5
    iget-object v2, p1, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_6
    move v0, v1

    .line 92
    goto :goto_1
.end method

.method public getCategory()Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->category:Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->category:Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;

    .line 60
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->id:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->name:Ljava/lang/String;

    .line 52
    return-void
.end method
