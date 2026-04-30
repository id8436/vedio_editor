.class public Lcom/adobe/premiereclip/dcx/DCXMergeSelectionFactory;
.super Ljava/lang/Object;
.source "DCXMergeSelectionFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static createSelectionWithBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;)Lcom/adobe/premiereclip/dcx/DCXMergeSelection;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;

    invoke-direct {v0, p0, p1}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSelectionWithMutableBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;)Lcom/adobe/premiereclip/dcx/DCXMergeSelection;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;

    invoke-direct {v0, p0, p1}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;)V

    return-object v0
.end method
