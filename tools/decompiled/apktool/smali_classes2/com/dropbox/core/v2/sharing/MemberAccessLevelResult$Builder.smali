.class public Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;
.super Ljava/lang/Object;
.source "MemberAccessLevelResult.java"


# instance fields
.field protected accessDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected warning:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 122
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;->warning:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;->accessDetails:Ljava/util/List;

    .line 124
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 4

    .prologue
    .line 184
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;->warning:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;->accessDetails:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public withAccessDetails(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;"
        }
    .end annotation

    .prologue
    .line 166
    if-eqz p1, :cond_1

    .line 167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;

    .line 168
    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'accessDetails\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;->accessDetails:Ljava/util/List;

    .line 174
    return-object p0
.end method

.method public withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 136
    return-object p0
.end method

.method public withWarning(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;->warning:Ljava/lang/String;

    .line 149
    return-object p0
.end method
