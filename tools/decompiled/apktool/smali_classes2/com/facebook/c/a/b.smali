.class public final enum Lcom/facebook/c/a/b;
.super Ljava/lang/Enum;
.source "CacheErrorLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/c/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/c/a/b;

.field public static final enum b:Lcom/facebook/c/a/b;

.field public static final enum c:Lcom/facebook/c/a/b;

.field public static final enum d:Lcom/facebook/c/a/b;

.field public static final enum e:Lcom/facebook/c/a/b;

.field public static final enum f:Lcom/facebook/c/a/b;

.field public static final enum g:Lcom/facebook/c/a/b;

.field public static final enum h:Lcom/facebook/c/a/b;

.field public static final enum i:Lcom/facebook/c/a/b;

.field public static final enum j:Lcom/facebook/c/a/b;

.field public static final enum k:Lcom/facebook/c/a/b;

.field public static final enum l:Lcom/facebook/c/a/b;

.field public static final enum m:Lcom/facebook/c/a/b;

.field public static final enum n:Lcom/facebook/c/a/b;

.field public static final enum o:Lcom/facebook/c/a/b;

.field public static final enum p:Lcom/facebook/c/a/b;

.field public static final enum q:Lcom/facebook/c/a/b;

.field private static final synthetic r:[Lcom/facebook/c/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/facebook/c/a/b;

    const-string/jumbo v1, "READ_DECODE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/b;->a:Lcom/facebook/c/a/b;

    .line 24
    new-instance v0, Lcom/facebook/c/a/b;

    const-string/jumbo v1, "READ_FILE"

    invoke-direct {v0, v1, v4}, Lcom/facebook/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/b;->b:Lcom/facebook/c/a/b;

    .line 25
    new-instance v0, Lcom/facebook/c/a/b;

    const-string/jumbo v1, "READ_FILE_NOT_FOUND"

    invoke-direct {v0, v1, v5}, Lcom/facebook/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/b;->c:Lcom/facebook/c/a/b;

    .line 26
    new-instance v0, Lcom/facebook/c/a/b;

    const-string/jumbo v1, "READ_INVALID_ENTRY"

    invoke-direct {v0, v1, v6}, Lcom/facebook/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/b;->d:Lcom/facebook/c/a/b;

    .line 28
    new-instance v0, Lcom/facebook/c/a/b;

    const-string/jumbo v1, "WRITE_ENCODE"

    invoke-direct {v0, v1, v7}, Lcom/facebook/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/b;->e:Lcom/facebook/c/a/b;

    .line 29
    new-instance v0, Lcom/facebook/c/a/b;

    const-string/jumbo v1, "WRITE_CREATE_TEMPFILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/b;->f:Lcom/facebook/c/a/b;

    .line 30
    new-instance v0, Lcom/facebook/c/a/b;

    const-string/jumbo v1, "WRITE_UPDATE_FILE_NOT_FOUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/b;->g:Lcom/facebook/c/a/b;

    .line 31
    new-instance v0, Lcom/facebook/c/a/b;

    const-string/jumbo v1, "WRITE_RENAME_FILE_TEMPFILE_NOT_FOUND"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/b;->h:Lcom/facebook/c/a/b;

    .line 32
    new-instance v0, Lcom/facebook/c/a/b;

    const-string/jumbo v1, "WRITE_RENAME_FILE_TEMPFILE_PARENT_NOT_FOUND"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/facebook/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/b;->i:Lcom/facebook/c/a/b;

    .line 33
    new-instance v0, Lcom/facebook/c/a/b;

    const-string/jumbo v1, "WRITE_RENAME_FILE_OTHER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/facebook/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/b;->j:Lcom/facebook/c/a/b;

    .line 34
    new-instance v0, Lcom/facebook/c/a/b;

    const-string/jumbo v1, "WRITE_CREATE_DIR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/facebook/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/b;->k:Lcom/facebook/c/a/b;

    .line 35
    new-instance v0, Lcom/facebook/c/a/b;

    const-string/jumbo v1, "WRITE_CALLBACK_ERROR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/facebook/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/b;->l:Lcom/facebook/c/a/b;

    .line 36
    new-instance v0, Lcom/facebook/c/a/b;

    const-string/jumbo v1, "WRITE_INVALID_ENTRY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/facebook/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/b;->m:Lcom/facebook/c/a/b;

    .line 38
    new-instance v0, Lcom/facebook/c/a/b;

    const-string/jumbo v1, "DELETE_FILE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/facebook/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/b;->n:Lcom/facebook/c/a/b;

    .line 40
    new-instance v0, Lcom/facebook/c/a/b;

    const-string/jumbo v1, "EVICTION"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/facebook/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/b;->o:Lcom/facebook/c/a/b;

    .line 41
    new-instance v0, Lcom/facebook/c/a/b;

    const-string/jumbo v1, "GENERIC_IO"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/facebook/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/b;->p:Lcom/facebook/c/a/b;

    .line 42
    new-instance v0, Lcom/facebook/c/a/b;

    const-string/jumbo v1, "OTHER"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/facebook/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/a/b;->q:Lcom/facebook/c/a/b;

    .line 22
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/facebook/c/a/b;

    sget-object v1, Lcom/facebook/c/a/b;->a:Lcom/facebook/c/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/c/a/b;->b:Lcom/facebook/c/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/c/a/b;->c:Lcom/facebook/c/a/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/c/a/b;->d:Lcom/facebook/c/a/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/c/a/b;->e:Lcom/facebook/c/a/b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/c/a/b;->f:Lcom/facebook/c/a/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/c/a/b;->g:Lcom/facebook/c/a/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/c/a/b;->h:Lcom/facebook/c/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/c/a/b;->i:Lcom/facebook/c/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/c/a/b;->j:Lcom/facebook/c/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/c/a/b;->k:Lcom/facebook/c/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/c/a/b;->l:Lcom/facebook/c/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/c/a/b;->m:Lcom/facebook/c/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/c/a/b;->n:Lcom/facebook/c/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/facebook/c/a/b;->o:Lcom/facebook/c/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/facebook/c/a/b;->p:Lcom/facebook/c/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/facebook/c/a/b;->q:Lcom/facebook/c/a/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/c/a/b;->r:[Lcom/facebook/c/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/c/a/b;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/facebook/c/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/a/b;

    return-object v0
.end method

.method public static values()[Lcom/facebook/c/a/b;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/facebook/c/a/b;->r:[Lcom/facebook/c/a/b;

    invoke-virtual {v0}, [Lcom/facebook/c/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/c/a/b;

    return-object v0
.end method
