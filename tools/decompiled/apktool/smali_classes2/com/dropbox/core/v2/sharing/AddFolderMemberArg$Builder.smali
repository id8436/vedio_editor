.class public Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;
.super Ljava/lang/Object;
.source "AddFolderMemberArg.java"


# instance fields
.field protected customMessage:Ljava/lang/String;

.field protected final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/AddMember;",
            ">;"
        }
    .end annotation
.end field

.field protected quiet:Z

.field protected final sharedFolderId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/AddMember;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'sharedFolderId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->sharedFolderId:Ljava/lang/String;

    .line 164
    if-nez p2, :cond_2

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'members\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/AddMember;

    .line 168
    if-nez v0, :cond_3

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'members\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_4
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->members:Ljava/util/List;

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->quiet:Z

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->customMessage:Ljava/lang/String;

    .line 175
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;
    .locals 5

    .prologue
    .line 227
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->sharedFolderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->members:Ljava/util/List;

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->quiet:Z

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->customMessage:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;-><init>(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    return-object v0
.end method

.method public withCustomMessage(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;
    .locals 2

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'customMessage\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->customMessage:Ljava/lang/String;

    .line 217
    return-object p0
.end method

.method public withQuiet(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;
    .locals 1

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->quiet:Z

    .line 196
    :goto_0
    return-object p0

    .line 194
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->quiet:Z

    goto :goto_0
.end method
