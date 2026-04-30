.class public Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;
.super Ljava/lang/Object;
.source "AddPaperDocUser.java"


# instance fields
.field protected customMessage:Ljava/lang/String;

.field protected final docId:Ljava/lang/String;

.field protected final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;"
        }
    .end annotation
.end field

.field protected quiet:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    if-nez p1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'docId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->docId:Ljava/lang/String;

    .line 149
    if-nez p2, :cond_1

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'members\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "List \'members\' has more than 20 items"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/AddMember;

    .line 156
    if-nez v0, :cond_3

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'members\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_4
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->members:Ljava/util/List;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->customMessage:Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->quiet:Z

    .line 163
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/paper/AddPaperDocUser;
    .locals 5

    .prologue
    .line 207
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->members:Ljava/util/List;

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->customMessage:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->quiet:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/paper/AddPaperDocUser;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public withCustomMessage(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->customMessage:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public withQuiet(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;
    .locals 1

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->quiet:Z

    .line 197
    :goto_0
    return-object p0

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->quiet:Z

    goto :goto_0
.end method
