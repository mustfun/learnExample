package com.dzy.tree;

import org.junit.Test;

/**
 * @author dengzhiyuan
 * @version 1.0
 * @date 2017/8/28
 * @since 1.0
 */
public class BinaryTreeTest {

    @Test
    public void testInsert(){
        BinaryTree b = new BinaryTree();
        b.insert(3);b.insert(8);b.insert(1);b.insert(4);b.insert(6);
        b.insert(2);b.insert(11);b.insert(9);b.insert(21);b.insert(25);

        System.out.println(b.toString(b.root));

        // 是否存在节点值10
        TreeNode node01 = b.search(11);
        System.out.println("是否存在节点值为11 => " + node01.value);
    }

}
