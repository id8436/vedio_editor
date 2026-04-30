.class public final Lcom/dropbox/core/v2/files/ListFolderContinueError;
.super Ljava/lang/Object;
.source "ListFolderContinueError.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/ListFolderContinueError;

.field public static final RESET:Lcom/dropbox/core/v2/files/ListFolderContinueError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

.field private pathValue:Lcom/dropbox/core/v2/files/LookupError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ListFolderContinueError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;->RESET:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/ListFolderContinueError;->withTag(Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;)Lcom/dropbox/core/v2/files/ListFolderContinueError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ListFolderContinueError;->RESET:Lcom/dropbox/core/v2/files/ListFolderContinueError;

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ListFolderContinueError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;->OTHER:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/ListFolderContinueError;->withTag(Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;)Lcom/dropbox/core/v2/files/ListFolderContinueError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ListFolderContinueError;->OTHER:Lcom/dropbox/core/v2/files/ListFolderContinueError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/ListFolderContinueError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderContinueError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/ListFolderContinueError;
    .locals 2

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ListFolderContinueError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;->PATH:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/ListFolderContinueError;->withTagAndPath(Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/ListFolderContinueError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;)Lcom/dropbox/core/v2/files/ListFolderContinueError;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ListFolderContinueError;-><init>()V

    .line 82
    iput-object p1, v0, Lcom/dropbox/core/v2/files/ListFolderContinueError;->_tag:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

    .line 83
    return-object v0
.end method

.method private withTagAndPath(Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/ListFolderContinueError;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ListFolderContinueError;-><init>()V

    .line 96
    iput-object p1, v0, Lcom/dropbox/core/v2/files/ListFolderContinueError;->_tag:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

    .line 97
    iput-object p2, v0, Lcom/dropbox/core/v2/files/ListFolderContinueError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    .line 98
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 198
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 201
    :cond_1
    if-eqz p1, :cond_0

    .line 204
    instance-of v2, p1, Lcom/dropbox/core/v2/files/ListFolderContinueError;

    if-eqz v2, :cond_0

    .line 205
    check-cast p1, Lcom/dropbox/core/v2/files/ListFolderContinueError;

    .line 206
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderContinueError;->_tag:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderContinueError;->_tag:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

    if-ne v2, v3, :cond_0

    .line 209
    sget-object v2, Lcom/dropbox/core/v2/files/ListFolderContinueError$1;->$SwitchMap$com$dropbox$core$v2$files$ListFolderContinueError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListFolderContinueError;->_tag:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 211
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderContinueError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderContinueError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderContinueError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderContinueError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 213
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 215
    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderContinueError;->_tag:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;->PATH:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

    if-eq v0, v1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderContinueError;->_tag:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderContinueError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 189
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderContinueError;->_tag:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderContinueError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 193
    return v0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderContinueError;->_tag:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;->OTHER:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPath()Z
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderContinueError;->_tag:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;->PATH:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReset()Z
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderContinueError;->_tag:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;->RESET:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderContinueError;->_tag:Lcom/dropbox/core/v2/files/ListFolderContinueError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderContinueError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListFolderContinueError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderContinueError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListFolderContinueError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
