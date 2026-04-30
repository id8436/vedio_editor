.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;
.super Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;
.source "AdobeDCXMutableMetadata.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;-><init>()V

    .line 59
    return-void
.end method

.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;,
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/adobe/xmp/XMPMeta;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;-><init>(Lcom/adobe/xmp/XMPMeta;)V

    .line 76
    return-void
.end method

.method static addIngredient(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 15

    .prologue
    .line 647
    :try_start_0
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "InstanceID"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v1

    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 648
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "DocumentID"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v1

    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 650
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 652
    new-instance v1, Lcom/adobe/xmp/options/IteratorOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/IteratorOptions;-><init>()V

    .line 653
    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v3, "Pantry"

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/adobe/xmp/options/IteratorOptions;->setJustChildren(Z)Lcom/adobe/xmp/options/IteratorOptions;

    move-result-object v1

    invoke-interface {p0, v2, v3, v1}, Lcom/adobe/xmp/XMPMeta;->iterator(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)Lcom/adobe/xmp/XMPIterator;

    move-result-object v2

    .line 654
    const/4 v3, 0x0

    .line 655
    const/4 v4, 0x0

    .line 656
    if-eqz p6, :cond_c

    .line 657
    :goto_0
    invoke-interface {v2}, Lcom/adobe/xmp/XMPIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 658
    invoke-interface {v2}, Lcom/adobe/xmp/XMPIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 660
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 661
    move-object v0, v2

    check-cast v0, Lcom/adobe/xmp/impl/XMPIteratorImpl;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getBaseNS()Ljava/lang/String;

    move-result-object v1

    .line 662
    const-string/jumbo v6, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v7, "InstanceID"

    invoke-interface {p0, v1, v5, v6, v7}, Lcom/adobe/xmp/XMPMeta;->getStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v7, "InstanceID"

    invoke-interface {p0, v1, v5, v6, v7}, Lcom/adobe/xmp/XMPMeta;->getStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v1

    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 663
    :goto_1
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 665
    const/4 v1, 0x1

    .line 666
    const/4 v3, -0x1

    move v9, v1

    move v10, v3

    .line 676
    :goto_2
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "ManageTo"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "ManageTo"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v1

    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .line 677
    :goto_3
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "ManageUI"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "ManageUI"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v1

    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 680
    :goto_4
    const-string/jumbo v1, "Ingredients"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/adobe/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 681
    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v3, "Ingredients"

    new-instance v4, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v1, 0x200

    invoke-direct {v4, v1}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    const/4 v5, 0x0

    new-instance v6, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v1, 0x100

    invoke-direct {v6, v1}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lcom/adobe/xmp/XMPMeta;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 682
    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v4, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v5, "instanceID"

    move-object v1, p0

    move-object v3, v14

    move-object v6, v11

    invoke-interface/range {v1 .. v6}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v4, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v5, "documentID"

    move-object v1, p0

    move-object v3, v14

    move-object v6, v12

    invoke-interface/range {v1 .. v6}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    if-eqz p2, :cond_0

    .line 686
    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v4, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v5, "fromPart"

    move-object v1, p0

    move-object v3, v14

    move-object/from16 v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    if-eqz p3, :cond_0

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v3, "fromPart"

    invoke-static {v2, v3}, Lcom/adobe/xmp/XMPPathFactory;->composeStructFieldPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 692
    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v4, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v5, "partDescription"

    move-object v1, p0

    move-object/from16 v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/adobe/xmp/XMPMeta;->setQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_0
    if-eqz p4, :cond_1

    .line 696
    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v4, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v5, "toPart"

    move-object v1, p0

    move-object v3, v14

    move-object/from16 v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    if-eqz p5, :cond_1

    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v3, "toPart"

    invoke-static {v2, v3}, Lcom/adobe/xmp/XMPPathFactory;->composeStructFieldPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 701
    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v4, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v5, "partDescription"

    move-object v1, p0

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/adobe/xmp/XMPMeta;->setQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 706
    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v4, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v5, "manageTo"

    move-object v1, p0

    move-object v3, v14

    move-object v6, v8

    invoke-interface/range {v1 .. v6}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 710
    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v4, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v5, "manageUI"

    move-object v1, p0

    move-object v3, v14

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_3
    if-nez v9, :cond_4

    if-nez p6, :cond_9

    .line 716
    :cond_4
    invoke-interface {p0}, Lcom/adobe/xmp/XMPMeta;->dumpObject()Ljava/lang/String;

    .line 759
    :goto_5
    return-void

    .line 662
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 669
    :cond_6
    if-eqz v1, :cond_b

    .line 670
    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 671
    add-int/lit8 v1, v3, 0x1

    :goto_6
    move v3, v1

    .line 673
    goto/16 :goto_0

    .line 676
    :cond_7
    const-string/jumbo v1, ""

    move-object v8, v1

    goto/16 :goto_3

    .line 677
    :cond_8
    const-string/jumbo v1, ""

    move-object v7, v1

    goto/16 :goto_4

    .line 720
    :cond_9
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 722
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "Pantry"

    invoke-interface {p0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "Pantry"

    const-string/jumbo v3, ""

    new-instance v4, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v5, 0x200

    invoke-direct {v4, v5}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    invoke-interface {p0, v1, v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 728
    :cond_a
    invoke-interface/range {p1 .. p1}, Lcom/adobe/xmp/XMPMeta;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/XMPMeta;

    .line 731
    const-string/jumbo v2, "Ingredients"

    invoke-static {p0, v1, v2, v10, v13}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->insertIngredientPantryItems(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;ILjava/util/Set;)I

    move-result v2

    .line 734
    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v4, "Pantry"

    invoke-interface {v1, v3, v4}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string/jumbo v3, "Pantry"

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Lcom/adobe/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 741
    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/mm/"

    invoke-interface {p0, v2, v6}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v3, ""

    new-instance v4, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    invoke-interface {p0, v2, v6, v3, v4}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 745
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "http://ns.adobe.com/xap/1.0/mm/"

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->duplicateSubtree(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-interface {p0}, Lcom/adobe/xmp/XMPMeta;->dumpObject()Ljava/lang/String;

    move-result-object v1

    .line 752
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 754
    :catch_0
    move-exception v1

    .line 755
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeDCXMutableMetadata.addIngredient"

    invoke-virtual {v1}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_b
    move v1, v3

    goto/16 :goto_6

    :cond_c
    move v9, v4

    move v10, v3

    goto/16 :goto_2
.end method

.method public static duplicateSubtree(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1050
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1102
    :cond_0
    :goto_0
    return-void

    .line 1053
    :cond_1
    :try_start_0
    check-cast p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 1054
    check-cast p1, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 1056
    if-nez p2, :cond_3

    move-object v2, v1

    .line 1067
    :goto_1
    if-nez p4, :cond_5

    move-object v1, v0

    .line 1081
    :goto_2
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 1084
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1085
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1086
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 1087
    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMutableMetadata.duplicateSubtree"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1059
    :cond_3
    if-nez p3, :cond_4

    .line 1060
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1, p2, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 1063
    :cond_4
    invoke-static {p2, p3}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v2

    .line 1064
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 1070
    :cond_5
    if-nez p5, :cond_6

    .line 1071
    const/4 v1, 0x1

    invoke-static {v0, p4, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 1073
    :cond_6
    invoke-static {p4, p5}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v1

    .line 1074
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 1091
    :cond_7
    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method static fileMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 936
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 937
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->MD5HashFromStream(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v0

    .line 938
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 945
    :goto_0
    return-object v0

    .line 940
    :catch_0
    move-exception v0

    .line 941
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeDCXMutableMetadata.fileMD5"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 942
    goto :goto_0

    .line 943
    :catch_1
    move-exception v0

    .line 944
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeDCXMutableMetadata.fileMD5"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 945
    goto :goto_0
.end method

.method static getNextHistoryDate(Lcom/adobe/xmp/XMPMeta;Ljava/lang/Integer;)Lcom/adobe/xmp/XMPDateTime;
    .locals 4

    .prologue
    .line 301
    :try_start_0
    const-string/jumbo v0, "History"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 302
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v3, "when"

    invoke-interface {p0, v1, v0, v2, v3}, Lcom/adobe/xmp/XMPMeta;->getStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMutableMetadata.getNextHistoryDate"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static insertHistoryItem(Lcom/adobe/xmp/XMPMeta;ILcom/adobe/xmp/XMPMeta;I)V
    .locals 8

    .prologue
    .line 323
    :try_start_0
    const-string/jumbo v0, "History"

    invoke-static {v0, p3}, Lcom/adobe/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 324
    const-string/jumbo v1, "History"

    invoke-static {v1, p1}, Lcom/adobe/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 325
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, v2}, Lcom/adobe/xmp/XMPMeta;->iterator(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)Lcom/adobe/xmp/XMPIterator;

    move-result-object v7

    .line 326
    invoke-interface {v7}, Lcom/adobe/xmp/XMPIterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    new-instance v0, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 331
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "History"

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v5

    move-object v0, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->insertArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 333
    :goto_1
    invoke-interface {v7}, Lcom/adobe/xmp/XMPIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-interface {v7}, Lcom/adobe/xmp/XMPIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 337
    const-string/jumbo v4, ""

    .line 338
    const-string/jumbo v5, ""

    .line 339
    if-eqz v0, :cond_2

    .line 341
    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 345
    :cond_2
    const/16 v0, 0x3a

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 346
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 347
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 349
    :cond_3
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    move-object v0, p0

    move-object v2, v6

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 352
    :catch_0
    move-exception v0

    .line 353
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMutableMetadata.insertHistoryItem"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static insertIngredientPantryItems(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;ILjava/util/Set;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/xmp/XMPMeta;",
            "Lcom/adobe/xmp/XMPMeta;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 567
    .line 569
    :try_start_0
    new-instance v4, Lcom/adobe/xmp/options/IteratorOptions;

    invoke-direct {v4}, Lcom/adobe/xmp/options/IteratorOptions;-><init>()V

    .line 570
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/adobe/xmp/options/IteratorOptions;->setJustChildren(Z)Lcom/adobe/xmp/options/IteratorOptions;

    move-result-object v2

    invoke-interface {p1, v1, p2, v2}, Lcom/adobe/xmp/XMPMeta;->iterator(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)Lcom/adobe/xmp/XMPIterator;

    move-result-object v3

    .line 572
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 574
    :cond_0
    :goto_0
    invoke-interface {v3}, Lcom/adobe/xmp/XMPIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 575
    invoke-interface {v3}, Lcom/adobe/xmp/XMPIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 576
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 577
    move-object v0, v3

    check-cast v0, Lcom/adobe/xmp/impl/XMPIteratorImpl;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getBaseNS()Ljava/lang/String;

    move-result-object v2

    .line 578
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getValue()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    const-string/jumbo v6, ""

    .line 579
    :goto_1
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    .line 580
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v6, "instanceID"

    invoke-interface {p1, v2, v5, v1, v6}, Lcom/adobe/xmp/XMPMeta;->getStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v2

    .line 581
    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v1, ""

    .line 582
    :goto_2
    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPProperty;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    .line 583
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 587
    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 588
    if-eqz v2, :cond_0

    .line 589
    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 633
    :catch_0
    move-exception v1

    move v5, p3

    .line 634
    :goto_3
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeDCXMutableMetadata.insertIngredientPantryItems"

    invoke-virtual {v1}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_1
    :goto_4
    return v5

    .line 578
    :cond_2
    :try_start_1
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getValue()Ljava/lang/String;

    goto :goto_1

    .line 581
    :cond_3
    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 593
    :cond_4
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 595
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "Pantry"

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/adobe/xmp/options/IteratorOptions;->setJustChildren(Z)Lcom/adobe/xmp/options/IteratorOptions;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->iterator(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)Lcom/adobe/xmp/XMPIterator;
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    move v5, p3

    .line 597
    :goto_5
    :try_start_2
    invoke-interface {v7}, Lcom/adobe/xmp/XMPIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 598
    invoke-interface {v7}, Lcom/adobe/xmp/XMPIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 599
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 600
    move-object v0, v7

    check-cast v0, Lcom/adobe/xmp/impl/XMPIteratorImpl;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getBaseNS()Ljava/lang/String;

    move-result-object v3

    .line 601
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string/jumbo v2, ""

    .line 602
    :goto_6
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    .line 604
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "InstanceID"

    invoke-interface {p1, v3, v4, v1, v2}, Lcom/adobe/xmp/XMPMeta;->getStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v1

    .line 605
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string/jumbo v1, ""

    .line 606
    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 607
    invoke-interface {v9, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v6, "Ingredients"

    invoke-static {v2, v6}, Lcom/adobe/xmp/XMPPathFactory;->composeStructFieldPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-static {p0, p1, v1, v5, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->insertIngredientPantryItems(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;ILjava/util/Set;)I
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_1

    move-result p3

    .line 615
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v5, "Pantry"

    invoke-static {v2, v5}, Lcom/adobe/xmp/XMPPathFactory;->composeStructFieldPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-interface {p1, v3, v1}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/adobe/xmp/XMPException; {:try_start_3 .. :try_end_3} :catch_0

    .line 619
    add-int/lit8 v8, p3, 0x1

    .line 620
    :try_start_4
    const-string/jumbo v1, "Pantry"

    invoke-static {v1, v8}, Lcom/adobe/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 622
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    invoke-interface {p0, v1, v6}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, ""

    new-instance v5, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v10, 0x100

    invoke-direct {v5, v10}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    invoke-interface {p0, v1, v6, v2, v5}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 625
    const-string/jumbo v5, "http://ns.adobe.com/xap/1.0/mm/"

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->duplicateSubtree(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/adobe/xmp/XMPException; {:try_start_4 .. :try_end_4} :catch_2

    move v1, v8

    :goto_8
    move v5, v1

    .line 629
    goto/16 :goto_5

    .line 601
    :cond_5
    :try_start_5
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getValue()Ljava/lang/String;

    goto/16 :goto_6

    .line 633
    :catch_1
    move-exception v1

    goto/16 :goto_3

    .line 605
    :cond_6
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;
    :try_end_5
    .catch Lcom/adobe/xmp/XMPException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v1

    goto :goto_7

    .line 633
    :catch_2
    move-exception v1

    move v5, v8

    goto/16 :goto_3

    :cond_7
    move v1, v5

    goto :goto_8

    :cond_8
    move v5, p3

    goto/16 :goto_4
.end method

.method static lessThanOperator(Lcom/adobe/xmp/XMPDateTime;Lcom/adobe/xmp/XMPDateTime;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 285
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->hasDate()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/adobe/xmp/XMPDateTime;->hasDate()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 293
    :cond_1
    :goto_0
    return v0

    .line 286
    :cond_2
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getYear()I

    move-result v2

    invoke-interface {p1}, Lcom/adobe/xmp/XMPDateTime;->getYear()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 287
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getMonth()I

    move-result v2

    invoke-interface {p1}, Lcom/adobe/xmp/XMPDateTime;->getMonth()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 288
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getDay()I

    move-result v2

    invoke-interface {p1}, Lcom/adobe/xmp/XMPDateTime;->getDay()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 289
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getHour()I

    move-result v2

    invoke-interface {p1}, Lcom/adobe/xmp/XMPDateTime;->getHour()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 290
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getMinute()I

    move-result v2

    invoke-interface {p1}, Lcom/adobe/xmp/XMPDateTime;->getMinute()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 291
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getSecond()I

    move-result v2

    invoke-interface {p1}, Lcom/adobe/xmp/XMPDateTime;->getSecond()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 292
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v2

    invoke-interface {p1}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v3

    if-lt v2, v3, :cond_1

    move v0, v1

    .line 293
    goto :goto_0
.end method


# virtual methods
.method addIngredient(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 784
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->addIngredient(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method addIngredient(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v1

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 764
    invoke-static {p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 763
    invoke-static/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->addIngredient(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 766
    const/4 v0, 0x1

    return v0
.end method

.method addIngredientAndPantry(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 811
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->addIngredientAndPantry(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method addIngredientAndPantry(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 790
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v1

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 791
    invoke-static {p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 790
    invoke-static/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->addIngredient(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 793
    return v6
.end method

.method addJPEGThumbnail([BII)V
    .locals 8

    .prologue
    .line 1117
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 1119
    :try_start_0
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v2, "Thumbnails"

    new-instance v3, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v4, 0x800

    invoke-direct {v3, v4}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    const/4 v4, 0x0

    new-instance v5, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1120
    const-string/jumbo v1, "Thumbnails"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/adobe/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1121
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/g/img/"

    const-string/jumbo v4, "format"

    const-string/jumbo v5, "JPEG"

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/g/img/"

    const-string/jumbo v4, "width"

    invoke-static {p2}, Lcom/adobe/xmp/XMPUtils;->convertFromInteger(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/g/img/"

    const-string/jumbo v4, "height"

    invoke-static {p3}, Lcom/adobe/xmp/XMPUtils;->convertFromInteger(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/g/img/"

    const-string/jumbo v4, "image"

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1130
    :goto_0
    return-void

    .line 1125
    :catch_0
    move-exception v0

    .line 1126
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMutableMetadata#addJPEGThumbnail"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1127
    :catch_1
    move-exception v0

    .line 1128
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMutableMetadata#addJPEGThumbnail"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method addLicenseInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 847
    .line 848
    const-string/jumbo v1, "by"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 849
    const-string/jumbo v1, "http://creativecommons.org/licenses/by/4.0/"

    .line 850
    const-string/jumbo v0, "Attribution"

    move-object v2, v1

    move-object v1, v0

    .line 872
    :goto_0
    if-eqz v2, :cond_0

    .line 874
    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getLicense()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->setPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 882
    :try_start_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getRightsMarked()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    const-string/jumbo v3, "True"

    invoke-virtual {p0, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->setPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Ljava/lang/String;)V

    .line 885
    const-string/jumbo v0, "This work is licensed to the public under the Creative Commons %s license %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 886
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getUsageTerms()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->setLocalizedPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Ljava/lang/String;)V

    .line 887
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getRights()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->setLocalizedPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException; {:try_start_1 .. :try_end_1} :catch_1

    .line 893
    :cond_1
    :goto_2
    if-eqz p2, :cond_2

    .line 895
    :try_start_2
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getAttributionURL()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->setPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException; {:try_start_2 .. :try_end_2} :catch_2

    .line 900
    :cond_2
    :goto_3
    if-eqz p3, :cond_3

    .line 902
    :try_start_3
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getAttributionName()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->setPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException; {:try_start_3 .. :try_end_3} :catch_3

    .line 907
    :cond_3
    :goto_4
    return-void

    .line 852
    :cond_4
    const-string/jumbo v1, "by-sa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 853
    const-string/jumbo v1, "http://creativecommons.org/licenses/by-sa/4.0/"

    .line 854
    const-string/jumbo v0, "Attribution-ShareAlike"

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 856
    :cond_5
    const-string/jumbo v1, "by-nd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 857
    const-string/jumbo v1, "http://creativecommons.org/licenses/by-nd/4.0/"

    .line 858
    const-string/jumbo v0, "Attribution-NoDerivatives"

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 860
    :cond_6
    const-string/jumbo v1, "by-nc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 861
    const-string/jumbo v1, "http://creativecommons.org/licenses/by-nc/4.0/"

    .line 862
    const-string/jumbo v0, "Attribution-NonCommercial"

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 864
    :cond_7
    const-string/jumbo v1, "by-nc-sa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 865
    const-string/jumbo v1, "http://creativecommons.org/licenses/by-nc-sa/4.0/"

    .line 866
    const-string/jumbo v0, "Attribution-NonCommercial-ShareAlike"

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 868
    :cond_8
    const-string/jumbo v1, "by-nc-nd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 869
    const-string/jumbo v1, "http://creativecommons.org/licenses/by-nc-nd/4.0/"

    .line 870
    const-string/jumbo v0, "Attribution-NonCommercial-NoDerivatives"

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 875
    :catch_0
    move-exception v0

    .line 876
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v4, "AdobeDCXMutableMetadata.addLicenseInfo"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 888
    :catch_1
    move-exception v0

    .line 889
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMutableMetadata.addLicenseInfo"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 896
    :catch_2
    move-exception v0

    .line 897
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMutableMetadata.addLicenseInfo"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 903
    :catch_3
    move-exception v0

    .line 904
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMutableMetadata.addLicenseInfo"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_9
    move-object v1, v0

    move-object v2, v0

    goto/16 :goto_0
.end method

.method addOriginUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;
        }
    .end annotation

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 823
    if-eqz p1, :cond_0

    .line 824
    :try_start_0
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "ManageTo"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "ManageTo"

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 827
    :cond_0
    if-eqz p2, :cond_1

    .line 828
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "ManageUI"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "ManageUI"

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :cond_1
    :goto_0
    return-void

    .line 832
    :catch_0
    move-exception v0

    .line 833
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->handleXMPError(Lcom/adobe/xmp/XMPException;)V

    goto :goto_0
.end method

.method addTag(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;
        }
    .end annotation

    .prologue
    .line 914
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->hasTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 915
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSubject()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->appendToUnorderedArrayWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Ljava/lang/String;)V

    .line 917
    :cond_0
    return-void
.end method

.method addTags(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;
        }
    .end annotation

    .prologue
    .line 920
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 921
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 922
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->addTag(Ljava/lang/String;)V

    goto :goto_0

    .line 925
    :cond_0
    return-void
.end method

.method public appendStructItemToOrderedArrayWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;
        }
    .end annotation

    .prologue
    .line 188
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 189
    new-instance v5, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v5}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 190
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v4, 0x400

    invoke-direct {v3, v4}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->handleXMPError(Lcom/adobe/xmp/XMPException;)V

    goto :goto_0
.end method

.method public appendStructItemToUnorderedArrayWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;
        }
    .end annotation

    .prologue
    .line 200
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 201
    new-instance v5, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v5}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 202
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v4, 0x200

    invoke-direct {v3, v4}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->handleXMPError(Lcom/adobe/xmp/XMPException;)V

    goto :goto_0
.end method

.method public appendToOrderedArrayWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;
        }
    .end annotation

    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v4, 0x400

    invoke-direct {v3, v4}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->handleXMPError(Lcom/adobe/xmp/XMPException;)V

    goto :goto_0
.end method

.method public appendToUnorderedArrayWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;
        }
    .end annotation

    .prologue
    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v4, 0x200

    invoke-direct {v3, v4}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->handleXMPError(Lcom/adobe/xmp/XMPException;)V

    goto :goto_0
.end method

.method public assignNewDocumentId()V
    .locals 7

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 254
    :try_start_0
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "InstanceID"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 258
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v3, "DocumentID"

    invoke-interface {v0, v1, v3}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v3, "InstanceID"

    invoke-interface {v0, v1, v3}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v3, "DocumentID"

    invoke-interface {v0, v1, v3, v5}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v3, "InstanceID"

    invoke-interface {v0, v1, v3, v5}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v4, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v6, "instanceID"

    invoke-interface {v0, v1, v3, v4, v6}, Lcom/adobe/xmp/XMPMeta;->getStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v1

    .line 266
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 267
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "instanceID"

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "documentID"

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_0
    :goto_1
    return-void

    .line 266
    :cond_1
    const-string/jumbo v1, ""
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMutableMetadata.assignNewDocumentId"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public copySubTree(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)V
    .locals 6

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v1

    .line 235
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 235
    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->duplicateSubtree(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public deletePropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)V
    .locals 3

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 215
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public deletePropertyWithSchema(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 226
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method deleteThumbnails()V
    .locals 3

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 1134
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v2, "Thumbnails"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    return-void
.end method

.method ensureMinimalXMPForFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 981
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 982
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    .line 983
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v2

    .line 984
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 990
    :try_start_0
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "DocumentID"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v1

    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 991
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 992
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->fileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 993
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v6

    .line 1036
    :goto_0
    return v0

    .line 997
    :cond_0
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "DocumentID"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "DocumentID"

    invoke-interface {v0, v1, v2, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1001
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "History"

    new-instance v3, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v4, 0x400

    invoke-direct {v3, v4}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    const/4 v4, 0x0

    new-instance v5, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v10, 0x100

    invoke-direct {v5, v10}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1002
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "action"

    const-string/jumbo v5, "copied"

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "instanceID"

    move-object v5, v9

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "when"

    move-object v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1006
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "softwareAgent"

    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :cond_1
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "InstanceID"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v2, "MetadataDate"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "InstanceID"

    invoke-interface {v0, v1, v2, v8}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1014
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v2, "MetadataDate"

    invoke-interface {v0, v1, v2, v7}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1016
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1019
    const-string/jumbo v1, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v2, "format"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const-string/jumbo v1, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v2, "format"

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1025
    :cond_2
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "History"

    new-instance v3, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v4, 0x400

    invoke-direct {v3, v4}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    const/4 v4, 0x0

    new-instance v5, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v9, 0x100

    invoke-direct {v5, v9}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1026
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "action"

    const-string/jumbo v5, "saved"

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "instanceID"

    move-object v5, v8

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "when"

    move-object v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1030
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "softwareAgent"

    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMutableMetadata.ensureMinimalXMPForFile"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 1036
    goto/16 :goto_0
.end method

.method fixDerivedCompositeWithDocId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1106
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getDocumentId()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->getPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1108
    const-string/jumbo v0, "copied"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDerivedWithActionAndDocId(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    :cond_0
    return-void
.end method

.method mergeMetadataFrom(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;)Z
    .locals 18

    .prologue
    .line 364
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "from should not be null"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 365
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v9

    .line 366
    if-eqz p2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v1

    move-object v4, v1

    .line 368
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v10

    .line 369
    const/4 v5, 0x0

    .line 374
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 377
    invoke-interface {v10}, Lcom/adobe/xmp/XMPMeta;->iterator()Lcom/adobe/xmp/XMPIterator;

    move-result-object v3

    .line 378
    :cond_1
    :goto_1
    invoke-interface {v3}, Lcom/adobe/xmp/XMPIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 380
    invoke-interface {v3}, Lcom/adobe/xmp/XMPIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 381
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 382
    move-object v0, v3

    check-cast v0, Lcom/adobe/xmp/impl/XMPIteratorImpl;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getBaseNS()Ljava/lang/String;

    move-result-object v13

    .line 383
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const-string/jumbo v2, ""

    move-object v8, v2

    .line 384
    :goto_2
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v14

    .line 386
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 389
    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "xmpMM:History"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 390
    invoke-interface {v3}, Lcom/adobe/xmp/XMPIterator;->skipSubtree()V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 472
    :catch_0
    move-exception v1

    .line 473
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeDCXMutableMetadata.mergeMetadataFrom"

    invoke-virtual {v1}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 481
    invoke-static {}, Lcom/adobe/xmp/XMPDateTimeFactory;->create()Lcom/adobe/xmp/XMPDateTime;

    invoke-static {}, Lcom/adobe/xmp/XMPDateTimeFactory;->create()Lcom/adobe/xmp/XMPDateTime;

    .line 483
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 484
    invoke-static {v10, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->getNextHistoryDate(Lcom/adobe/xmp/XMPMeta;Ljava/lang/Integer;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v3

    .line 485
    if-nez v3, :cond_3

    .line 486
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 488
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 489
    invoke-static {v9, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->getNextHistoryDate(Lcom/adobe/xmp/XMPMeta;Ljava/lang/Integer;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v2

    .line 490
    if-nez v2, :cond_1d

    .line 491
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v17, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v1

    move-object/from16 v1, v17

    .line 493
    :cond_4
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_19

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_19

    .line 494
    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->lessThanOperator(Lcom/adobe/xmp/XMPDateTime;Lcom/adobe/xmp/XMPDateTime;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 496
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v10, v1, v9, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->insertHistoryItem(Lcom/adobe/xmp/XMPMeta;ILcom/adobe/xmp/XMPMeta;I)V

    .line 497
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 499
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 500
    invoke-static {v9, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->getNextHistoryDate(Lcom/adobe/xmp/XMPMeta;Ljava/lang/Integer;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v1

    .line 501
    if-nez v1, :cond_5

    .line 502
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 504
    :cond_5
    const/4 v5, 0x1

    goto :goto_3

    .line 366
    :cond_6
    const/4 v1, 0x0

    move-object v4, v1

    goto/16 :goto_0

    .line 383
    :cond_7
    :try_start_1
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto/16 :goto_2

    .line 394
    :cond_8
    invoke-interface {v9, v13, v12}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v1

    .line 395
    if-eqz v1, :cond_10

    .line 396
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 397
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPProperty;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPProperty;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v1

    move v7, v1

    .line 400
    :goto_4
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eq v14, v7, :cond_1

    .line 403
    :cond_9
    if-nez v4, :cond_c

    const/4 v1, 0x1

    .line 404
    :goto_5
    if-eqz v4, :cond_a

    .line 405
    invoke-interface {v4, v13, v12}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v16

    .line 406
    if-nez v16, :cond_d

    const/4 v2, 0x0

    move-object v6, v2

    .line 407
    :goto_6
    if-nez v16, :cond_e

    const/4 v2, 0x0

    .line 408
    :goto_7
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-ne v14, v2, :cond_a

    .line 409
    const/4 v1, 0x1

    .line 412
    :cond_a
    if-eqz v1, :cond_1f

    .line 413
    new-instance v1, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v1, v7}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    invoke-interface {v10, v13, v12, v15, v1}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 414
    const/4 v1, 0x1

    :goto_8
    move v5, v1

    .line 416
    goto/16 :goto_1

    .line 397
    :cond_b
    const/4 v1, 0x0

    move v7, v1

    goto :goto_4

    .line 403
    :cond_c
    const/4 v1, 0x0

    goto :goto_5

    .line 406
    :cond_d
    invoke-interface/range {v16 .. v16}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_6

    .line 407
    :cond_e
    invoke-interface/range {v16 .. v16}, Lcom/adobe/xmp/properties/XMPProperty;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface/range {v16 .. v16}, Lcom/adobe/xmp/properties/XMPProperty;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v2

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    goto :goto_7

    .line 420
    :cond_10
    if-eqz v4, :cond_1

    invoke-interface {v4, v13, v12}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 421
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 422
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPProperty;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPProperty;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v1

    .line 423
    :goto_9
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v14, v1, :cond_1

    .line 424
    invoke-interface {v3}, Lcom/adobe/xmp/XMPIterator;->skipSubtree()V

    .line 425
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 426
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 422
    :cond_11
    const/4 v1, 0x0

    goto :goto_9

    .line 437
    :cond_12
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 438
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 439
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 440
    invoke-interface {v10, v2, v1}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 444
    :cond_13
    invoke-interface {v9}, Lcom/adobe/xmp/XMPMeta;->iterator()Lcom/adobe/xmp/XMPIterator;

    move-result-object v2

    .line 445
    :cond_14
    :goto_b
    invoke-interface {v2}, Lcom/adobe/xmp/XMPIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 446
    invoke-interface {v2}, Lcom/adobe/xmp/XMPIterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    move-object v3, v0

    .line 447
    invoke-interface {v3}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 448
    move-object v0, v2

    check-cast v0, Lcom/adobe/xmp/impl/XMPIteratorImpl;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPIteratorImpl;->getBaseNS()Ljava/lang/String;

    move-result-object v7

    .line 449
    invoke-interface {v3}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    const-string/jumbo v1, ""

    .line 450
    :goto_c
    invoke-interface {v3}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v3

    .line 452
    if-eqz v6, :cond_14

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_14

    .line 455
    const-string/jumbo v8, "http://ns.adobe.com/xap/1.0/mm/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    const-string/jumbo v8, "xmpMM:History"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 456
    invoke-interface {v2}, Lcom/adobe/xmp/XMPIterator;->skipSubtree()V

    goto :goto_b

    .line 449
    :cond_15
    invoke-interface {v3}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 459
    :cond_16
    invoke-interface {v10, v7, v6}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v8

    .line 460
    if-nez v8, :cond_1e

    .line 462
    if-eqz v4, :cond_1e

    invoke-interface {v4, v7, v6}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v8

    if-nez v8, :cond_1e

    .line 465
    new-instance v8, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v8, v3}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    invoke-interface {v10, v7, v6, v1, v8}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0

    .line 466
    const/4 v1, 0x1

    :goto_d
    move v5, v1

    .line 470
    goto :goto_b

    .line 506
    :cond_17
    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->lessThanOperator(Lcom/adobe/xmp/XMPDateTime;Lcom/adobe/xmp/XMPDateTime;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 508
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 509
    invoke-static {v9, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->getNextHistoryDate(Lcom/adobe/xmp/XMPMeta;Ljava/lang/Integer;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v1

    .line 510
    if-nez v1, :cond_18

    .line 511
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 514
    :cond_18
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 515
    invoke-static {v10, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->getNextHistoryDate(Lcom/adobe/xmp/XMPMeta;Ljava/lang/Integer;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v2

    .line 516
    if-nez v2, :cond_4

    .line 517
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_3

    .line 520
    :cond_19
    :goto_e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1b

    .line 521
    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v10, v1, v9, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->insertHistoryItem(Lcom/adobe/xmp/XMPMeta;ILcom/adobe/xmp/XMPMeta;I)V

    .line 523
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 524
    invoke-static {v9, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->getNextHistoryDate(Lcom/adobe/xmp/XMPMeta;Ljava/lang/Integer;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v1

    .line 525
    if-nez v1, :cond_1a

    .line 526
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 528
    :cond_1a
    const/4 v5, 0x1

    goto :goto_e

    .line 531
    :cond_1b
    if-eqz v5, :cond_1c

    .line 532
    const-string/jumbo v1, "merged"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->appendHistoryEvent(Ljava/lang/String;)V

    .line 535
    :cond_1c
    return v5

    :cond_1d
    move-object/from16 v17, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v1

    move-object/from16 v1, v17

    goto/16 :goto_3

    :cond_1e
    move v1, v5

    goto :goto_d

    :cond_1f
    move v1, v5

    goto/16 :goto_8
.end method

.method removeLicenseInfo()V
    .locals 1

    .prologue
    .line 1138
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getLicense()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->deletePropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)V

    .line 1139
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getRightsMarked()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->deletePropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)V

    .line 1140
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getUsageTerms()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->deletePropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)V

    .line 1141
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getRights()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->deletePropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)V

    .line 1142
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getAttributionURL()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->deletePropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)V

    .line 1143
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getAttributionName()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->deletePropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)V

    .line 1144
    return-void
.end method

.method public setLocalizedPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;
        }
    .end annotation

    .prologue
    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "x-default"

    const-string/jumbo v4, "x-default"

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->handleXMPError(Lcom/adobe/xmp/XMPException;)V

    goto :goto_0
.end method

.method public setLocalizedPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;
        }
    .end annotation

    .prologue
    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "x-default"

    const-string/jumbo v4, "x-default"

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v6, p3}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    invoke-interface/range {v0 .. v6}, Lcom/adobe/xmp/XMPMeta;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->handleXMPError(Lcom/adobe/xmp/XMPException;)V

    goto :goto_0
.end method

.method public setLocalizedPropertyWithSchema(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;
        }
    .end annotation

    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 104
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "x-default"

    const-string/jumbo v4, "x-default"

    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->handleXMPError(Lcom/adobe/xmp/XMPException;)V

    goto :goto_0
.end method

.method public setManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public setPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;
        }
    .end annotation

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->handleXMPError(Lcom/adobe/xmp/XMPException;)V

    goto :goto_0
.end method

.method public setPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;
        }
    .end annotation

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v4, p3}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->handleXMPError(Lcom/adobe/xmp/XMPException;)V

    goto :goto_0
.end method

.method public setPropertyWithSchema(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 91
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->handleXMPError(Lcom/adobe/xmp/XMPException;)V

    goto :goto_0
.end method

.method updateFile(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1113
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXFileMetadata;->addMetadata(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
