# -*- coding: utf-8 -*-

#  Copyright (c) 2019. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
#  Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
#  Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
#  Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
#  Vestibulum commodo. Ut rhoncus gravida arcu.

"""This is test module."""

from subprocess import check_output


def test_echo():
    """An example test."""
    result = run_cmd("echo hello world")
    assert result == "hello world\n"


def run_cmd(cmd):
    """Run a shell command `cmd` and return its output."""
    return check_output(cmd, shell=True).decode('utf-8')
