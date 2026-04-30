.class public Lcom/behance/sdk/dto/search/BehanceSDKUserWorkExpDTO;
.super Ljava/lang/Object;
.source "BehanceSDKUserWorkExpDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x761d4b465ca65307L


# instance fields
.field private endDate:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private organization:Ljava/lang/String;

.field private position:Ljava/lang/String;

.field private startDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserWorkExpDTO;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserWorkExpDTO;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserWorkExpDTO;->organization:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserWorkExpDTO;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserWorkExpDTO;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserWorkExpDTO;->endDate:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserWorkExpDTO;->location:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setOrganization(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserWorkExpDTO;->organization:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserWorkExpDTO;->position:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserWorkExpDTO;->startDate:Ljava/lang/String;

    .line 52
    return-void
.end method
