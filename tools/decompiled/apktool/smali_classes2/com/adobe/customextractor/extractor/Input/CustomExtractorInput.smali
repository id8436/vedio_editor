.class public final Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;
.super Ljava/lang/Object;
.source "CustomExtractorInput.java"

# interfaces
.implements Lcom/adobe/customextractor/extractor/Input/ExtractorInput;


# static fields
.field private static final SCRATCH_SPACE:[B


# instance fields
.field private final dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

.field private length:J

.field private position:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;->SCRATCH_SPACE:[B

    return-void
.end method

.method public constructor <init>(Lcom/adobe/customextractor/DataSource/DataSource;JJ)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    .line 27
    iput-wide p2, p0, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;->position:J

    .line 28
    iput-wide p4, p0, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;->length:J

    .line 29
    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;->length:J

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;->position:J

    return-wide v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 33
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    invoke-interface {v1, p1, p2, p3}, Lcom/adobe/customextractor/DataSource/DataSource;->read([BII)I

    move-result v1

    .line 37
    if-ne v1, v0, :cond_1

    .line 41
    :goto_0
    return v0

    .line 40
    :cond_1
    iget-wide v2, p0, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;->position:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;->position:J

    move v0, v1

    .line 41
    goto :goto_0
.end method

.method public readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;->readFully([BIIZ)Z

    .line 70
    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 47
    move v0, p3

    .line 48
    :goto_0
    if-lez v0, :cond_3

    .line 49
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    invoke-interface {v1, p1, p2, v0}, Lcom/adobe/customextractor/DataSource/DataSource;->read([BII)I

    move-result v1

    .line 53
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 54
    if-eqz p4, :cond_1

    if-ne v0, p3, :cond_1

    .line 55
    const/4 v0, 0x0

    .line 63
    :goto_1
    return v0

    .line 57
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 59
    :cond_2
    add-int/2addr p2, v1

    .line 60
    sub-int/2addr v0, v1

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget-wide v0, p0, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;->position:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;->position:J

    .line 63
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public skipFully(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 74
    move v0, p1

    .line 75
    :goto_0
    if-lez v0, :cond_2

    .line 76
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;->dataSource:Lcom/adobe/customextractor/DataSource/DataSource;

    sget-object v2, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;->SCRATCH_SPACE:[B

    const/4 v3, 0x0

    sget-object v4, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;->SCRATCH_SPACE:[B

    array-length v4, v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/adobe/customextractor/DataSource/DataSource;->read([BII)I

    move-result v1

    .line 80
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 81
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 83
    :cond_1
    sub-int/2addr v0, v1

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    iget-wide v0, p0, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;->position:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;->position:J

    .line 86
    return-void
.end method
