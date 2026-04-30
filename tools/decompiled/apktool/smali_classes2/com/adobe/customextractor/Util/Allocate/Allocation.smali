.class public final Lcom/adobe/customextractor/Util/Allocate/Allocation;
.super Ljava/lang/Object;
.source "Allocation.java"


# instance fields
.field public final data:[B

.field private final offset:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/adobe/customextractor/Util/Allocate/Allocation;->data:[B

    .line 21
    iput p2, p0, Lcom/adobe/customextractor/Util/Allocate/Allocation;->offset:I

    .line 22
    return-void
.end method


# virtual methods
.method public translateOffset(I)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/adobe/customextractor/Util/Allocate/Allocation;->offset:I

    add-int/2addr v0, p1

    return v0
.end method
