.class public final Lcom/dropbox/core/v1/DbxEntry$File;
.super Lcom/dropbox/core/v1/DbxEntry;
.source "DbxEntry.java"


# static fields
.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry$File;",
            ">;"
        }
    .end annotation
.end field

.field public static final ReaderMaybeDeleted:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry$File;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J


# instance fields
.field public final clientMtime:Ljava/util/Date;

.field public final humanSize:Ljava/lang/String;

.field public final lastModified:Ljava/util/Date;

.field public final numBytes:J

.field public final photoInfo:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

.field public final rev:Ljava/lang/String;

.field public final videoInfo:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 310
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$File$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxEntry$File$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$File;->Reader:Lcom/dropbox/core/json/JsonReader;

    .line 325
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$File$2;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxEntry$File$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$File;->ReaderMaybeDeleted:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 275
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcom/dropbox/core/v1/DbxEntry$File;-><init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;)V

    .line 276
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;)V
    .locals 2

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v1/DbxEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v1/DbxEntry$1;)V

    .line 260
    iput-wide p4, p0, Lcom/dropbox/core/v1/DbxEntry$File;->numBytes:J

    .line 261
    iput-object p6, p0, Lcom/dropbox/core/v1/DbxEntry$File;->humanSize:Ljava/lang/String;

    .line 262
    iput-object p7, p0, Lcom/dropbox/core/v1/DbxEntry$File;->lastModified:Ljava/util/Date;

    .line 263
    iput-object p8, p0, Lcom/dropbox/core/v1/DbxEntry$File;->clientMtime:Ljava/util/Date;

    .line 264
    iput-object p9, p0, Lcom/dropbox/core/v1/DbxEntry$File;->rev:Ljava/lang/String;

    .line 265
    iput-object p10, p0, Lcom/dropbox/core/v1/DbxEntry$File;->photoInfo:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    .line 266
    iput-object p11, p0, Lcom/dropbox/core/v1/DbxEntry$File;->videoInfo:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    .line 267
    return-void
.end method

.method private static nullablePendingField(Lcom/dropbox/core/util/DumpWriter;Ljava/lang/String;Lcom/dropbox/core/util/Dumpable;Lcom/dropbox/core/util/Dumpable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/dropbox/core/util/Dumpable;",
            ">(",
            "Lcom/dropbox/core/util/DumpWriter;",
            "Ljava/lang/String;",
            "TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 293
    if-nez p2, :cond_0

    .line 301
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 296
    if-ne p2, p3, :cond_1

    .line 297
    const-string/jumbo v0, "pending"

    invoke-virtual {p0, v0}, Lcom/dropbox/core/util/DumpWriter;->verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {p0, p2}, Lcom/dropbox/core/util/DumpWriter;->v(Lcom/dropbox/core/util/Dumpable;)Lcom/dropbox/core/util/DumpWriter;

    goto :goto_0
.end method


# virtual methods
.method public asFile()Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 0

    .prologue
    .line 308
    return-object p0
.end method

.method public asFolder()Lcom/dropbox/core/v1/DbxEntry$Folder;
    .locals 2

    .prologue
    .line 307
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "not a folder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
    .locals 4

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/dropbox/core/v1/DbxEntry;->dumpFields(Lcom/dropbox/core/util/DumpWriter;)V

    .line 281
    const-string/jumbo v0, "numBytes"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxEntry$File;->numBytes:J

    invoke-virtual {v0, v2, v3}, Lcom/dropbox/core/util/DumpWriter;->v(J)Lcom/dropbox/core/util/DumpWriter;

    .line 282
    const-string/jumbo v0, "humanSize"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->humanSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 283
    const-string/jumbo v0, "lastModified"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->lastModified:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/util/Date;)Lcom/dropbox/core/util/DumpWriter;

    .line 284
    const-string/jumbo v0, "clientMtime"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->clientMtime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/util/Date;)Lcom/dropbox/core/util/DumpWriter;

    .line 285
    const-string/jumbo v0, "rev"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->rev:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 286
    const-string/jumbo v0, "photoInfo"

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->photoInfo:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    sget-object v2, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->PENDING:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    invoke-static {p1, v0, v1, v2}, Lcom/dropbox/core/v1/DbxEntry$File;->nullablePendingField(Lcom/dropbox/core/util/DumpWriter;Ljava/lang/String;Lcom/dropbox/core/util/Dumpable;Lcom/dropbox/core/util/Dumpable;)V

    .line 287
    const-string/jumbo v0, "videoInfo"

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->videoInfo:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    sget-object v2, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->PENDING:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    invoke-static {p1, v0, v1, v2}, Lcom/dropbox/core/v1/DbxEntry$File;->nullablePendingField(Lcom/dropbox/core/util/DumpWriter;Ljava/lang/String;Lcom/dropbox/core/util/Dumpable;Lcom/dropbox/core/util/Dumpable;)V

    .line 288
    return-void
.end method

.method public equals(Lcom/dropbox/core/v1/DbxEntry$File;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$File;->partialEquals(Lcom/dropbox/core/v1/DbxEntry;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 350
    :cond_1
    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxEntry$File;->numBytes:J

    iget-wide v4, p1, Lcom/dropbox/core/v1/DbxEntry$File;->numBytes:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->humanSize:Ljava/lang/String;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry$File;->humanSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->lastModified:Ljava/util/Date;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry$File;->lastModified:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->clientMtime:Ljava/util/Date;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry$File;->clientMtime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->rev:Ljava/lang/String;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry$File;->rev:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->photoInfo:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry$File;->photoInfo:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    invoke-static {v1, v2}, Lcom/dropbox/core/util/LangUtil;->nullableEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->videoInfo:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry$File;->videoInfo:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    invoke-static {v1, v2}, Lcom/dropbox/core/util/LangUtil;->nullableEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 344
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dropbox/core/v1/DbxEntry$File;

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$File;->equals(Lcom/dropbox/core/v1/DbxEntry$File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    const-string/jumbo v0, "File"

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxEntry$File;->partialHashCode()I

    move-result v0

    .line 364
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxEntry$File;->numBytes:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 365
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->lastModified:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 366
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->clientMtime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 367
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->rev:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 368
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->photoInfo:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    invoke-static {v1}, Lcom/dropbox/core/util/LangUtil;->nullableHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->videoInfo:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    invoke-static {v1}, Lcom/dropbox/core/util/LangUtil;->nullableHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 370
    return v0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public isFolder()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method
