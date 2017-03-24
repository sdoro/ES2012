from django.test import TestCase

import os

class BasicTests(TestCase):

    def test_ver(self):
        f = os.popen('pip freeze | grep -i django')
        ver = f.read()
        self.assertEqual(ver, "Django==1.10.6\n")
