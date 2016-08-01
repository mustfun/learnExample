package com.dzy.tree;

import sun.reflect.generics.tree.Tree;

/**
 * Created by dengzhiyuan on 2016/8/1.
 * 二叉树遍历
 * */
public class BinaryTree {

    /**
     * 根节点
     */
    public static TreeNode root;

    public BinaryTree() {
        this.root=null;
    }

    /**
     * 插入节点
     */
    public TreeNode insert(int key){
        //新增节点
        TreeNode newNode=new TreeNode(key);
        //当前节点
        TreeNode current=root;
        //上个节点
        TreeNode parent=null; //root的父节点为空
        if (current==null){  //if root node is null
            root=newNode;
            return newNode;
        }
        while (true){
            parent=current;  //当前值给作为父节点
            if (key<current.value){
                current=current.left;
                if (current==null){  //如果当前值没有左节点
                    parent.left=newNode;
                    return newNode;
                }
            }else{
                current=current.right;
                if (current==null){//如果当前值没有右节点
                    parent.right=newNode;
                    return newNode;
                }
            }
        }
    }


    /**
     * 二叉树搜索
     * 一直找
     */
    public TreeNode search(int key){
        TreeNode current=root;  //当前根节点为root
        while (current!=null&&key!=current.value){
            if (key<current.value)
                current=current.left;
            else
                current=current.right;
        }
        return current;
    }

    /**
     * 删除节点
     *      1.找到删除节点
     *      2.如果删除节点左节点为空 , 右节点也为空;
     *      3.如果删除节点只有一个子节点 右节点 或者 左节点
     *      4.如果删除节点左右子节点都不为空
     * @param key
     * @return
     */
    public TreeNode delete(int key){
        TreeNode parent=root;  //父节点为root
        TreeNode current=root; //当前节点为root
        boolean isLeftChild=false;
        //找到要删除的节点
        while (current.value!=key){
            parent=current;
            if (current.value>key){
                isLeftChild=true;
                current=current.left;
            }else{
                isLeftChild=false;
                current=current.right;
            }
        }
        if (current==null){
            System.out.print("没有找到要删除的节点");
            return null;
        }
        //下面分三种情况删除节点
        if (current.left==null&&current.right==null){
            //要删除的节点没有子节点
            if (current==root){
                root=null;//如果是根节点就删除整棵树
            }else if(isLeftChild){
                parent.left=null;
            }else{
                parent.right=null;
            }
        }else if (current.left==null){
            //要删除的节点没有左节点，只有右节点
            if (current==root){
                root=current.right;
            }else if (isLeftChild){
                parent.left=current.right;
            }else{
                parent.right=current.right;
            }
        }else if(current.right==null){
            //要删除的只有左节点，没有右节点
            if (current==root){
                root=current.left;
            }else if(isLeftChild){
                parent.left=current.left;
            }else{
                parent.right=current.left;
            }
        }else{
            //两个节点都存在
            TreeNode successor=findSuccessor(current);
            if (current==root){
                root=successor;
            }else if(isLeftChild){
                parent.left=successor;
            }else{
                parent.right=successor;
            }
            successor.left=current.left;
        }
        return current;
    }

    private TreeNode findSuccessor(TreeNode delNode){
        TreeNode parent=delNode;
        TreeNode successor=delNode;
        TreeNode current=delNode.right;
        while (current!=null){
            parent=successor;
            successor=current;
            current=current.left;//左边节点
        }
        if (successor!=delNode.right){
            parent.left=successor.right;
            successor.right=delNode.right;
        }
        return successor;
    }



    public static void main(String[] args) {
        BinaryTree b = new BinaryTree();
        b.insert(3);b.insert(8);b.insert(1);b.insert(4);b.insert(6);
        b.insert(2);b.insert(10);b.insert(9);b.insert(20);b.insert(25);

        // 打印二叉树
        b.toString(b.root);
        System.out.println();

        // 是否存在节点值10
        TreeNode node01 = b.search(10);
        System.out.println("是否存在节点值为10 => " + node01.value);
        // 是否存在节点值11
        TreeNode node02 = b.search(11);
        System.out.println("是否存在节点值为11 => " + node02);

        // 删除节点8
        TreeNode node03 = b.delete(8);
        System.out.println("删除节点8 => " + node03.value);
        b.toString(b.root);


    }


    public String toString(TreeNode node) {
        return node.toString();
    }
}
