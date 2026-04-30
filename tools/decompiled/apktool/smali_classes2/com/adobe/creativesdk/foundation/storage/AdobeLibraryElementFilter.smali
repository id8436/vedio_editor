.class public Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;
.super Ljava/lang/Object;
.source "AdobeLibraryElementFilter.java"


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mContentTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchAny:Z

.field private mName:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->mMatchAny:Z

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->mContentTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isMatchAny()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->mMatchAny:Z

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->mCategory:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setContentTypes(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->mContentTypes:Ljava/util/ArrayList;

    .line 130
    return-void
.end method

.method public setMatchAny(Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->mMatchAny:Z

    .line 49
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->mName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->mType:Ljava/lang/String;

    .line 88
    return-void
.end method
