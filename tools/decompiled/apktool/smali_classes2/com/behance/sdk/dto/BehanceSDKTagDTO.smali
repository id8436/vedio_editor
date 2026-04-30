.class public Lcom/behance/sdk/dto/BehanceSDKTagDTO;
.super Ljava/lang/Object;
.source "BehanceSDKTagDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private approved:Z

.field private category:Ljava/lang/String;

.field private categoryId:I

.field private categoryLabel:Ljava/lang/String;

.field private id:J

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->categoryId:I

    return v0
.end method

.method public getCategoryLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->categoryLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->id:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isApproved()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->approved:Z

    return v0
.end method

.method public setApproved(Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->approved:Z

    .line 62
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->category:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setCategoryId(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->categoryId:I

    .line 70
    return-void
.end method

.method public setCategoryLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->categoryLabel:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->id:J

    .line 22
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->title:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->url:Ljava/lang/String;

    .line 54
    return-void
.end method
