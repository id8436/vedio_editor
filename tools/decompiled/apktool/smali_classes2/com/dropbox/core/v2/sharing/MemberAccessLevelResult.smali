.class public Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
.super Ljava/lang/Object;
.source "MemberAccessLevelResult.java"


# instance fields
.field protected final accessDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected final warning:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0, v0, v0}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/lang/String;Ljava/util/List;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/AccessLevel;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 50
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->warning:Ljava/lang/String;

    .line 51
    if-eqz p3, :cond_1

    .line 52
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;

    .line 53
    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'accessDetails\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessDetails:Ljava/util/List;

    .line 59
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    if-ne p1, p0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 204
    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 208
    check-cast p1, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    .line 209
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->warning:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->warning:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->warning:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->warning:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->warning:Ljava/lang/String;

    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessDetails:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessDetails:Ljava/util/List;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessDetails:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessDetails:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessDetails:Ljava/util/List;

    .line 211
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 215
    goto :goto_0
.end method

.method public getAccessDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessDetails:Ljava/util/List;

    return-object v0
.end method

.method public getAccessLevel()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getWarning()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->warning:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 190
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->warning:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessDetails:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 195
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
